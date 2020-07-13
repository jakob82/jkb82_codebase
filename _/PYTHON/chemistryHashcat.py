from array import *

pTable = ["C", "O", "H", "Li", "Be", "Na", "Mg", "K", "Ca", "Rb", "Sr", "Cs", 
"Ba", "Fr", "Ra", "Sc", "Ti", "Y", "Zr", "Hf", "Rf", "V", "Nb", "Ta", "Db", "Cr", "Mo", "W", 
"Sg", "Mn", "Tc", "Re", "Bh", "Fe", "Ru", "Os", "Hs", "Co", "Rh", "Ir", "Mt", "Ni", "Pd", "Pt", 
"Ds", "Cu", "Ag", "Au", "Rg", "Zn", "Cd", "Hg", "Cn", "B", "Al", "Ga", "In", "Ti", "Nh", "C", 
"Si", "Ge", "Sn", "Pb", "Fl", "N", "P", "As", "Sb", "Bi", "Mc", "S", "Se", "Te", "Po", "Lv", 
"F", "Cl", "Br", "I", "At", "As", "Ts", "He", "Ne", "Ar", "Kr", "Xe", "Rn", "Og", "La", "Ce", 
"Ac", "Th", "Pr", "Pa", "Nd", "U", "Pm", "Np", "Sm", "Pu", "Eu", "Am", "Gd", "Cm", "Tb", "Bk", 
"Dy", "Cf", "Ho", "Es", "Er", "Fm", "Tm", "Md", "Yn", "No", "Lu", "Lr"];

for x in pTable:
    for i in range(1, 15):    
        for y in pTable:
            for i2 in range(1, 15):
                print(x, i, y, i2) 