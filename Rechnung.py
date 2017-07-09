import numpy as np
from uncertainties import ufloat
import matplotlib.pyplot as plt
from scipy.optimize import curve_fit
import uncertainties.unumpy as unp
import sympy as sy
from sympy.tensor.array.mutable_ndim_array import MutableNDimArray
#import cmath as cm
from scipy.integrate import quad
from scipy.special import erf
import matplotlib
matplotlib.colors.ColorConverter.colors['tu'] = (128/256,186/256,38/256,0.5)

from table import (
        make_table,
        make_full_table,
        make_SI,
        write)


##########################################################################
##########################################################################
##########################################################################
### Konstanten

la = 0.225
A = 0.82
rho = 0.14
eta = 0.35

Vcd = complex(-la,0)                                     # V21 = V2d = Vcd
Vtd = A*la**3*complex((1-rho),-eta)              # V31 = V3d = Vtd


mP = 0.938
mN = 0.940
mu = 105.66
tau = 1776.82
alpha = 1/137
mA = 129*mN
A = 129
Z = 54
# Umrechnungsfaktor GeV^(-2) in barn
K = 0.389379 * 10**(-3)

##########################################################################
##########################################################################
##########################################################################
### Cross Sections

# Mein Wirkungsquerschnitt
def myCS(mA,mX,A,Z,C):
    mRed = mA*mX/(mX+mA)
    return mRed**2/np.pi/A**2 * (2*A-Z)**2*np.real(Vcd*Vtd*C)**2


# Wirkungsquerschnitt aus dem Paper
# C2 ist g'/mZ'
def PaperCS(mA,mX,A,Z,C2):
    mRed = mA*mX/(mX+mA)
    return (Z/A)**2 * mRed**2/9/np.pi**3 * alpha**2 * C2**4 * np.log(mu**2/tau**2)**2


##########################################################################
##########################################################################
##########################################################################
### Plotten 540 GeV < mZ/g < 4900 GeV
# ql=qX=1
mX = np.linspace(1,25, 1000)

# Mein Wirkungsquerschnitt für Z'
C = np.array([10*complex(1,1), 10, 10*complex(1,-1), complex(1,1), 1, complex(1,-1)], dtype = complex)
C = C*10**(-10)*8
color = ['aqua', 'dodgerblue', 'navy', 'gold', 'red', 'maroon']
label = ['$C_{2bs} = 8\cdot 10^{-9}(1+i)$', '$C_{2bs} = 8\cdot 10^{-9}$', '$C_{2bs} = 8\cdot 10^{-9}(1-i)$','$C_{2bs} = 8\cdot 10^{-10}(1+i)$', '$C_{2bs} = 8\cdot 10^{-10}$', '$C_{2bs} = 8\cdot 10^{-10}(1-i)$']

for i in range(0,len(C)):
    CS = myCS(mA,mX,A,Z,C[i])
    plt.plot(mX, K*CS, color[i], label = label[i])

PaperMin = PaperCS(mA,mX,A,Z,1/540)
PaperMax = PaperCS(mA,mX,A,Z,1/4900)
plt.fill_between(mX,K*PaperMin, K*PaperMax, color = 'tu')

plt.yscale('log')
plt.legend(loc = 'best')
plt.xlabel(r'$m_\chi$ in GeV')
plt.ylabel(r'$\sigma_0$ in $\mathrm{b}$')
plt.xlim(1,25)
plt.savefig('Paper/content/graphics/Allgemein11.pdf')
plt.show()

##########################################################################
# ql = 1, qX = 1/6

mX = np.linspace(1,1000, 1000)

# Mein Wirkungsquerschnitt für Z'
C = np.array([10*complex(1,1), 10, 10*complex(1,-1), complex(1,1), 1, complex(1,-1)], dtype = complex)
C = C*10**(-10)*8/6
color = ['aqua', 'dodgerblue', 'navy', 'gold', 'red', 'maroon']
label = ['$C_{2bs} = 8/6\cdot 10^{-9}(1+i)$', '$C_{2bs} = 8/6\cdot 10^{-9}$', '$C_{2bs} = 8/6\cdot 10^{-9}(1-i)$','$C_{2bs} = 8/6\cdot 10^{-10}(1+i)$', '$C_{2bs} = 8/6\cdot 10^{-10}$', '$C_{2bs} = 8/6\cdot 10^{-10}(1-i)$']

for i in range(0,len(C)):
    CS = myCS(mA,mX,A,Z,C[i])
    plt.plot(mX, K*CS, color[i], label = label[i])


# Wirkungsquerschnitt aus dem Paper
Cmin = 1/4900/np.sqrt(6)
Cmax = 1/540/np.sqrt(6)
PaperMin = PaperCS(mA,mX,A,Z,Cmin)
PaperMax = PaperCS(mA,mX,A,Z,Cmax)
plt.fill_between(mX, K*PaperMin, K*PaperMax, color='tu')

plt.yscale('log')
plt.xscale('log')
plt.legend(loc = 'best')
plt.xlabel(r'$m_\chi$ in GeV')
plt.ylabel(r'$\sigma_0$ in $\mathrm{b}$')
plt.xlim(0,1000)
plt.savefig('Paper/content/graphics/Allgemein116.pdf')
plt.show()


##########################################################################
##########################################################################
##########################################################################
### Plotten variierter Imaginärteil
#ql = 1, qX = 1

mX = np.linspace(1, 25,1000)

# Mein Wirkungsquerschnitt für Z'
C = np.array([complex(1,100), complex(1,10), complex(1,1)], dtype = complex)
C = C*10**(-10)*8
color = ['b', 'r', 'gold']
label = ['Im$(C_{2bs}) = 8\cdot 10^{-8}$', 'Im$(C_{2bs}) = 8\cdot 10^{-9}$', 'Im$(C_{2bs}) = 8\cdot 10^{-10}$']

for i in range(0,len(C)):
    CS = myCS(mA,mX,A,Z,C[i])
    plt.plot(mX, K*CS, color[i], label = label[i])

# Wirkungsquerschnitt aus dem Paper
PaperMin = PaperCS(mA,mX,A,Z,1/4900)
PaperMax = PaperCS(mA,mX,A,Z,1/540)
plt.fill_between(mX, K*PaperMin, K*PaperMax, color='tu')

plt.yscale('log')
plt.legend(loc = 'best')
plt.xlabel(r'$m_\chi$ in GeV')
plt.ylabel(r'$\sigma_0$ in $\mathrm{b}$')
plt.xlim(1,25)
plt.savefig('Paper/content/graphics/Im11.pdf')
plt.show()

##########################################################################
# ql = 1, qX = 1/6

mX = np.linspace(1,1000, 1000)

# Mein Wirkungsquerschnitt für Z'
C = np.array([complex(1,100), complex(1,10), complex(1,1)], dtype = complex)
C = C*10**(-10)*8/6
color = ['b', 'r', 'gold']
label = ['Im$(C_{2bs}) = 8/6\cdot 10^{-8}$', 'Im$(C_{2bs}) = 8/6\cdot 10^{-9}$', 'Im$(C_{2bs}) = 8/6\cdot 10^{-10}$']

for i in range(0,len(C)):
    CS = myCS(mA,mX,A,Z,C[i])
    plt.plot(mX, K*CS, color[i], label = label[i])
    
# Wirkungsquerschnitt aus dem Paper
Cmin = 1/4900/np.sqrt(6)
Cmax = 1/540/np.sqrt(6)
PaperMin = PaperCS(mA,mX,A,Z,Cmin)
PaperMax = PaperCS(mA,mX,A,Z,Cmax)
plt.fill_between(mX, K*PaperMin, K*PaperMax, color='tu')

plt.yscale('log')
plt.xscale('log')
plt.legend(loc = 'best')
plt.xlabel(r'$m_\chi$ in GeV')
plt.ylabel(r'$\sigma_0$ in $\mathrm{b}$')
plt.xlim(0,1000)
plt.savefig('Paper/content/graphics/Im116.pdf')
plt.show()


##########################################################################
##########################################################################
##########################################################################
### Plotten 2*10**-3 < g < 10**-2, mZ = 2mX
# gl = gX = 1)

mX = np.linspace(1,25, 1000)

# Wirkungsquerschnitt Paper
g = 2*10**(-3)
PaperMax = PaperCS(mA,mX,A,Z,g/2/mX/0.7)
PaperMin = PaperCS(mA,mX,A,Z,g/2/mX/1.3)
plt.fill_between(mX, K*PaperMin, K*PaperMax, color = 'tu')

# Mein Wirkungsquerschnitt für Z'
C = np.array([30, 8*complex(1,1), 8], dtype = complex)
C = C*10**(-10)
color = ['b', 'r', 'gold']
label = ['$3\cdot 10^{-9}$', '$8\cdot 10^{-10}(1+i)$', '$8\cdot 10^{-10}$']

m = np.zeros(len(C))

for i in range(0,len(C)):
    CS = myCS(mA,mX,A,Z,C[i])
    plt.plot(mX, K*CS, color[i], label = label[i])
    idx = np.argwhere(np.diff(np.sign(K*CS - K*PaperMin)) != 0).reshape(-1) + 0
    plt.vlines(mX[idx], linestyle = 'dashed', color = color[i], ymin = 0, ymax = K*PaperMin[idx])
    m[i] = mX[idx]


plt.yscale('log')
#plt.xscale('log')
plt.legend(loc = 'best')
plt.xlabel(r'$m_\chi$ in GeV')
plt.ylabel(r'$\sigma_0$ in $\mathrm{b}$')
plt.xlim(1,25)
plt.savefig('Paper/content/graphics/Relic11.pdf')
plt.show()
#print('mX: ', m)

#mZ = round(2*m*1.3, 0)
#print('mZ: ', mZ)
#print('mZ/g: ', round(mZ/g,0))

##########################################################################
# ql = 1, qX = 1/6

mX = np.linspace(1,1000, 1000)

# Wirkungsquerschnitt Paper
g = 10**(-2)/np.sqrt(6)
PaperMax = PaperCS(mA,mX,A,Z,g/2/mX/0.7)
PaperMin = PaperCS(mA,mX,A,Z,g/2/mX/1.3)
plt.fill_between(mX, K*PaperMin, K*PaperMax, color = 'tu')

# Mein Wirkungsquerschnitt für Z'
C = np.array([30, 8*complex(1,1), 8], dtype = complex)
C = C*10**(-10)/6
color = ['b', 'r', 'gold']
label = ['$3/6\cdot 10^{-9}$', '$8/6\cdot 10^{-10}(1+i)$', '$8/6\cdot 10^{-10}$']
m = np.zeros(len(C))
for i in range(0,len(C)):
    CS = myCS(mA,mX,A,Z,C[i])
    plt.plot(mX, K*CS, color[i], label = label[i])
    idx = np.argwhere(np.diff(np.sign(K*CS - K*PaperMin)) != 0).reshape(-1) + 0
    plt.vlines(mX[idx], linestyle = 'dashed', color = color[i], ymin = 0, ymax = K*PaperMin[idx])
    m[i] = mX[idx]


plt.yscale('log')
plt.xscale('log')
plt.legend(loc = 'best')
plt.xlabel(r'$m_\chi$ in GeV')
plt.ylabel(r'$\sigma_0$ in $\mathrm{b}$')
plt.xlim(1,1000)
plt.savefig('Paper/content/graphics/Relic116.pdf')
plt.show()

print('mX: ', m)
mZ = round(2*m*1.3,0)
print('mZ: ', mZ)
print('mZ/g: ', round(mZ/g/np.sqrt(6)))

