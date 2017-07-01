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

#########################################################################################################
#########################################################################################################
#########################################################################################################
### Konstanten

la = 0.225
A = 0.82
rho = 0.14
eta = 0.35

Vcd = complex(-la,0)                                     # V21 = V2d = Vcd
Vtd = complex(A*la**3*(1-rho),-A*la**3*eta)              # V31 = V3d = Vtd


mP = 0.938
mN = 0.940
mu = 105.66
tau = 1776.82
alpha = 1/137
mA = 129*mN
A = 129
Z = 54
# Umrechnungsfaktor GeV^(-2) in cm^2
K = 0.389379 * 10**(-27)

#########################################################################################################
#########################################################################################################
#########################################################################################################
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


#########################################################################################################
#########################################################################################################
#########################################################################################################
### Plotten 540 GeV < mZ/g < 4900 GeV
mX = np.linspace(1,25, 1000)

# Mein Wirkungsquerschnitt für Z'
C = 8*10**(-9)*complex(1,1)
plt.plot(mX, K*myCS(mA,mX,A,Z,C), 'aqua', label = '$C = 8\cdot 10^{-9}\cdot$(1+i)')
C = 8*10**(-9)
plt.plot(mX, K*myCS(mA,mX,A,Z,C), 'steelblue', label = '$C = 8\cdot 10^{-9}$')
C = 8*10**(-9)*complex(1,-1)
plt.plot(mX, K*myCS(mA,mX,A,Z,C), 'navy', label = '$C = 8\cdot 10^{-9}\cdot$(1$-$i)')

C = 8*10**(-10)*complex(1,1)
plt.plot(mX, K*myCS(mA,mX,A,Z,C), 'yellow', label = '$C = 8\cdot 10^{-10}\cdot$(1+i)')
C = 8*10**(-10)
plt.plot(mX, K*myCS(mA,mX,A,Z,C), 'lawngreen', label = '$C = 8\cdot 10^{-10}$')
C = 8*10**(-10)*complex(1,-1)
plt.plot(mX, K*myCS(mA,mX,A,Z,C), 'forestgreen', label = '$C = 8\cdot 10^{-10}\cdot$(1$-$i)')


C = 8*10**(-11)*complex(1,1)
plt.plot(mX, K*myCS(mA,mX,A,Z,C), 'chocolate', label = '$C = 8\cdot 10^{-11}\cdot$(1+i)')
C = 8*10**(-11)
plt.plot(mX, K*myCS(mA,mX,A,Z,C), 'r', label = '$C = 8\cdot 10^{-11}$')
C = 8*10**(-11)*complex(1,-1)
plt.plot(mX, K*myCS(mA,mX,A,Z,C), 'darkred', label = '$C = 8\cdot 10^{-11}\cdot$(1$-$i)')

PaperMin = PaperCS(mA,mX,A,Z,1/540)
PaperMax = PaperCS(mA,mX,A,Z,1/4900)
plt.fill_between(mX, K*PaperMin, K*PaperMax, color='red', alpha='0.5')

plt.yscale('log')
#plt.xscale('log')
plt.legend(loc = 'best')
plt.xlabel(r'$m_\chi$ in GeV')
plt.ylabel(r'$\sigma_0$ in $\mathrm{cm}^{2}$')
plt.xlim(1,25)
plt.savefig('Paper/content/graphics/Allgemein11.pdf')
plt.show()



#########################################################################################################
#########################################################################################################
#########################################################################################################
### Plotten ql = 1, qX = 1/6, 540 GeV < mZ/g < 4900 GeV, mZ = 2mX

mX = np.linspace(1,1000, 1000)

# Mein Wirkungsquerschnitt für Z'
C = 8/6*10**(-9)*complex(1,1)
plt.plot(mX, K*myCS(mA,mX,A,Z,C), 'aqua', label = '$C = 8 / 6 \cdot 10^{-9}\cdot$(1+i)')
C = 8/6*10**(-9)
plt.plot(mX, K*myCS(mA,mX,A,Z,C), 'steelblue', label = '$C = 8 / 6 \cdot 10^{-9}$')
C = 8/6*10**(-9)*complex(1,-1)
plt.plot(mX, K*myCS(mA,mX,A,Z,C), 'navy', label = '$C = 8 / 6 \cdot 10^{-9}\cdot$(1$-$i)')

C = 8/6*10**(-10)*complex(1,1)
plt.plot(mX, K*myCS(mA,mX,A,Z,C), 'yellow', label = '$C = 8 / 6 \cdot 10^{-10}\cdot$(1+i)')
C = 8/6*10**(-10)
plt.plot(mX, K*myCS(mA,mX,A,Z,C), 'lawngreen', label = '$C = 8 / 6 \cdot 10^{-10}$')
C = 8/6*10**(-10)*complex(1,-1)
plt.plot(mX, K*myCS(mA,mX,A,Z,C), 'forestgreen', label = '$C = 8 / 6 \cdot 10^{-10}\cdot$(1$-$i)')


C = 8/6*10**(-11)*complex(1,1)
plt.plot(mX, K*myCS(mA,mX,A,Z,C), 'chocolate', label = '$C = 8 / 6 \cdot 10^{-11}\cdot$(1+i)')
C = 8/6*10**(-11)
plt.plot(mX, K*myCS(mA,mX,A,Z,C), 'r', label = '$C = 8 / 6 \cdot 10^{-11}$')
C = 8/6*10**(-11)*complex(1,-1)
plt.plot(mX, K*myCS(mA,mX,A,Z,C), 'darkred', label = '$C = 8 / 6 \cdot 10^{-11}\cdot$(1$-$i)')

# Wirkungsquerschnitt aus dem Paper
Cmin = 1/4900/np.sqrt(6)
Cmax = 1/540/np.sqrt(6)
PaperMin = PaperCS(mA,mX,A,Z,Cmin)
PaperMax = PaperCS(mA,mX,A,Z,Cmax)
plt.fill_between(mX, K*PaperMin, K*PaperMax, color='red', alpha='0.5')

plt.yscale('log')
plt.xscale('log')
plt.legend(loc = 'best')
plt.xlabel(r'$m_\chi$ in GeV')
plt.ylabel(r'$\sigma_0$ in $\mathrm{cm}^{2}$')
plt.xlim(0,1000)
plt.savefig('Paper/content/graphics/Allgemein116.pdf')
plt.show()





#########################################################################################################
#########################################################################################################
#########################################################################################################
### Plotten ql = 1, qX = 1

mX = np.linspace(1, 25,1000)

# Mein Wirkungsquerschnitt für Z'
C = 8*10**(-10)*complex(1,1)
plt.plot(mX, K*myCS(mA,mX,A,Z,C), 'g', label = 'Im(C) = $8\cdot 10^{-10} \mathrm{GeV}^{-2}$')
C = 8*10**(-10)*complex(1,10)
plt.plot(mX, K*myCS(mA,mX,A,Z,C), 'y', label = 'Im(C) = $8\cdot 10^{-9} \mathrm{GeV}^{-2}$')
C = 8*10**(-10)*complex(1,100)
plt.plot(mX, K*myCS(mA,mX,A,Z,C), 'b', label = 'Im(C) = $8\cdot 10^{-8} \mathrm{GeV}^{-2}$')



# Wirkungsquerschnitt aus dem Paper
PaperMin = PaperCS(mA,mX,A,Z,1/4900)
PaperMax = PaperCS(mA,mX,A,Z,1/540)
#plt.plot(mX, K*PaperMin, 'r', label = '$g = 2\cdot 10^{-3}$')
#plt.plot(mX, K*PaperMax, 'b', label = '$g = 10^{-2}$')
plt.fill_between(mX, K*PaperMin, K*PaperMax, color='red', alpha='0.5')

plt.yscale('log')
#plt.xscale('log')
plt.legend(loc = 'best')
plt.xlabel(r'$m_\chi$ in GeV')
plt.ylabel(r'$\sigma_0$ in $\mathrm{cm}^{2}$')
plt.xlim(1,25)
plt.savefig('Paper/content/graphics/Im11.pdf')
plt.show()


#########################################################################################################
#########################################################################################################
#########################################################################################################
### Plotten ql = 1, qX = 1/6, 540 GeV < mZ/g < 4900 GeV, mZ = 2mX

mX = np.linspace(1,1000, 1000)

# Mein Wirkungsquerschnitt für Z'
C = 8/6*10**(-10)*complex(1,1)
plt.plot(mX, K*myCS(mA,mX,A,Z,C), 'g', label = 'Im(C) = $8/6\cdot 10^{-10} \mathrm{GeV}^{-2}$')
C = 8/6*10**(-10)*complex(1,10)
plt.plot(mX, K*myCS(mA,mX,A,Z,C), 'y', label = 'Im(C) = $8/6\cdot 10^{-9} \mathrm{GeV}^{-2}$')
C = 8/6*10**(-10)*complex(1,100)
plt.plot(mX, K*myCS(mA,mX,A,Z,C), 'b', label = 'Im(C) = $8/6\cdot 10^{-8} \mathrm{GeV}^{-2}$')

# Wirkungsquerschnitt aus dem Paper
Cmin = 1/4900/np.sqrt(6)
Cmax = 1/540/np.sqrt(6)
PaperMin = PaperCS(mA,mX,A,Z,Cmin)
PaperMax = PaperCS(mA,mX,A,Z,Cmax)
plt.fill_between(mX, K*PaperMin, K*PaperMax, color='red', alpha='0.5')

plt.yscale('log')
plt.xscale('log')
plt.legend(loc = 'best')
plt.xlabel(r'$m_\chi$ in GeV')
plt.ylabel(r'$\sigma_0$ in $\mathrm{cm}^{2}$')
plt.xlim(0,1000)
plt.savefig('Paper/content/graphics/Im116.pdf')
plt.show()




#########################################################################################################
#########################################################################################################
#########################################################################################################
### Plotten ql = 1, qX = 1/6, 540 GeV < mZ/g < 4900 GeV, mZ = 2mX

mX = np.linspace(1,1000, 1000)

# Mein Wirkungsquerschnitt für Z'
C = 8/6*10**(-10)
plt.plot(mX, K*myCS(mA,mX,A,Z,C), 'g', label = '$C = 8 / 6 \cdot 10^{-10}$')


# Wirkungsquerschnitt aus dem Paper
g = 10**(-2)

mZmax = mX*1.2
mZmin = mX*0.8
Cmin = g/mZmax/np.sqrt(6)
Cmax = g/mZmin/np.sqrt(6)
PaperMin = PaperCS(mA,mX,A,Z,Cmin)
PaperMax = PaperCS(mA,mX,A,Z,Cmax)
plt.fill_between(mX, K*PaperMin, K*PaperMax, color='red', alpha='0.5')

g = 10**(-1)

mZmax = mX*1.2
mZmin = mX*0.8
Cmin = g/mZmax/np.sqrt(6)
Cmax = g/mZmin/np.sqrt(6)
PaperMin = PaperCS(mA,mX,A,Z,Cmin)
PaperMax = PaperCS(mA,mX,A,Z,Cmax)
plt.fill_between(mX, K*PaperMin, K*PaperMax, color='blue', alpha='0.5')



plt.yscale('log')
plt.xscale('log')
plt.legend(loc = 'best')
plt.xlabel(r'$m_\chi$ in GeV')
plt.ylabel(r'$\sigma_0$ in $\mathrm{cm}^{2}$')
plt.xlim(0,1000)
plt.savefig('Paper/content/graphics/Relic.pdf')
plt.show()



