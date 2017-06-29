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

### nullte Komponente ist jeweils 0, damit man bei 1 mit dem Zählen anfangen kann
### u = 1, d = 2, s = 3
Chiral = np.zeros((9,4,4), dtype = sy.Symbol)
C = np.zeros((5,4), dtype = sy.Symbol)
#M, x, mX, mA, A, Z, Emin, Emax, ER, G = sy.symbols("M x mX mA A Z Emin, Emax, ER, G", real = True)

#########################################################################################################
#########################################################################################################
#########################################################################################################
### Konstanten
t0 = 0 # schwacher Isospin Eigenwert der DM, tritt nur auf, wenn a = 3

#V = np.zeros((4,4), dtype = np.complex_)
V = np.zeros((4,4), dtype = sy.Symbol)
V11, V12, V13, V21, V22, V23, V31, V32, V33 = sy.symbols("V11 V12 V13 V21 V22 V23 V31 V32 V33", real = True)
la = 0.225
A = 0.82
rho = 0.14
eta = 0.35

V[1,1] = V11
V[1,2] = V12
V[1,3] = V13
V[2,1] = V21
V[2,2] = V22
V[2,3] = V23
V[3,1] = V31
V[3,2] = V32
V[3,3] = V33
V[2,1] = complex(-la,0)                                     # V21 = V2d = Vcd
V[3,1] = complex(A*la**3*(1-rho),-A*la**3*eta)              # V31 = V3d = Vtd


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
#def myCS(mA,mX,A,Z,C):
#    return (mA*mX/(mX+mA))**2 /np.pi/A**2 * (2*A-Z)**2*np.real(V[2,1]*V[3,1]*C)**2

def myCS(mA,mX,A,Z,C):
    SI = (mA*mX/(mX+mA))**2 /np.pi/A**2 * (2*A-Z)**2*np.real(V[2,1]*V[3,1]*C)**2
    SD = (mA*mX/(mX+mA))**2 /np.pi/A**2 * 2**(10) * np.real(V[2,1]*V[3,1]*C)**2 * 0.89**2 * (1/2/3.826)**2 * (1/2*(3/2))/(1/2)**2
    return SD + SI



# Wirkungsquerschnitt aus dem Paper
# C2 ist g'/mZ'
def PaperCS(mA,mX,A,Z,C2):
    return (Z/A)**2 * (mA*mX/(mA+mX))**2/9/np.pi**3 * alpha**2 * C2**4 * np.log(mu**2/tau**2)**2


### Experimentelle Daten
mXdata, dataXENON = np.genfromtxt('build/dataXenon100.txt', unpack = True)
mXLUX, dataLUX = np.genfromtxt('build/dataLUX.txt', unpack = True) # data in zb
mXPandaX, dataPandaX = np.genfromtxt('build/dataPandaX.txt', unpack = True)


#########################################################################################################
#########################################################################################################
#########################################################################################################
### Plotten ql = qX = 1, mZ = 2mX, 2*10**(-3) < g < 10**(-2)

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

# Wirkungsquerschnitt aus dem Paper
gmax = 10**(-2)/np.sqrt(6)
gmin = 2*10**(-3)/np.sqrt(6)
PaperMin = PaperCS(mA,mX,A,Z,gmin/2/mX)
PaperMax = PaperCS(mA,mX,A,Z,gmax/2/mX)
plt.fill_between(mX, K*PaperMin, K*PaperMax, color='purple', alpha='0.5')

plt.yscale('log')
#plt.xscale('log')
plt.legend(loc = 'best')
plt.xlabel(r'$m_\chi$ in GeV')
plt.ylabel(r'$\sigma_0$ in $\mathrm{cm}^{2}$')
plt.xlim(1,25)
plt.savefig('build/SigmaNull1.pdf')
plt.show()

#########################################################################################################
#########################################################################################################
#########################################################################################################
### Plotten ql = 1, qX = 1/6, 450 GeV < mZ/g < 4900 GeV, mZ = 2mX

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
mZ = 2*mX
gmin = 1/4900*mZ
Cmin = gmin/mZ/6
gmax = 1/540*mZ
Cmax = gmax/mZ/6
PaperMin = PaperCS(mA,mX,A,Z,Cmin)
PaperMax = PaperCS(mA,mX,A,Z,Cmax)
plt.fill_between(mX, K*PaperMin, K*PaperMax, color='purple', alpha='0.5')

plt.yscale('log')
plt.xscale('log')
plt.legend(loc = 'best')
plt.xlabel(r'$m_\chi$ in GeV')
plt.ylabel(r'$\sigma_0$ in $\mathrm{cm}^{2}$')
plt.xlim(0,1000)
plt.savefig('build/SigmaNull2.pdf')
plt.show()


#########################################################################################################
#########################################################################################################
#########################################################################################################
### Energie und Geschwindigkeit

# Formfaktor
def F(ER):
    q = np.sqrt(2*mA*ER)
    R = 1.2*A**(1/3)
    fm = 1/0.1973 # Umrechnungsfaktor fm zu 1/GeV
    R1 = np.sqrt((R**2-5)*fm)
    return (3 * (np.sin(q*R1)-q*R1*np.cos(q*R1)) / (q*R1)**3)**2 * np.exp(-(q*fm)**2)

# Geschwindigkeitsanteil
c = 299792458
v0 = 240 * 1000 / c
vE = 244 * 1000 / c
def g(vmin):
    return 1/2/vE * (erf((vE-vmin)/v0) + erf((vE+vmin)/v0))

# Energieanteil
def Integrand(ER,mX,mA):
    return F(ER) * g(np.sqrt(ER * (mA+mX)**2/(2*mA*mX**2))) # ER, mA, mX in GeV

def E(mX,mA):
    E = quad(lambda ER: Integrand(ER,mX,mA), 0, 0.01)
    return E[0]



mX = np.linspace(1,25, 100)

myCSE = np.zeros(100)
for i in range(0,100):
    myCSE[i] = myCS(mA,mX[i],A,Z,8*10**(-10))*E(mX[i],mA)

PaperCSEmax = np.zeros(100)
PaperCSEmin = np.zeros(100)
gmax = 10**(-2)
gmin = 2*10**(-3)
for i in range(0,100):
    PaperCSEmax[i] = PaperCS(mA,mX[i],A,Z,gmax/2/mX[i])*E(mX[i],mA)
    PaperCSEmin[i] = PaperCS(mA,mX[i],A,Z,gmin/2/mX[i])*E(mX[i],mA)


# Experiment
plt.plot(mXdata, dataXENON, 'gold', label = 'XENON100')
plt.plot(mXLUX, dataLUX*10**(-45), 'r', label = 'LUX')
plt.plot(mXPandaX, dataPandaX, 'goldenrod', label = 'PandaX')
# Mein Wirkungsquerschnitt für Z'
plt.plot(mX, K*myCSE, 'navy', label = 'Z')

# Wirkungsquerschnitt aus dem Paper
plt.fill_between(mX, K*PaperCSEmin, K*PaperCSEmax, color='lime', alpha='0.5')

plt.yscale('log')
#plt.xscale('log')
plt.legend(loc = 'best')
plt.xlabel(r'$m_\chi$ in GeV')
plt.ylabel(r'$\sigma$ in $\mathrm{cm}^{2}$')
plt.xlim(1,25)
plt.savefig('build/CrossSection.pdf')
plt.show()


