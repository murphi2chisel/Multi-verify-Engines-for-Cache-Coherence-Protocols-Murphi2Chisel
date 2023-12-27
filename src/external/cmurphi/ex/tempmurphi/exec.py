import os

#list = ['mutual','german2','german3','german4','german5','flash2','flash3','flash4','flash5']
#list = ['german4','german5','flash2','flash3','flash4','flash5']
#list = ['f2','f3','f4','f5']
list = ['german5']
#list = ['mutual','german2','german3']
os.system('mkdir log')

def runMurphi(name):
    os.system('../../src/mu %s.m' % name)
    os.system('g++ -ggdb -o %s.o %s.cpp -I ../../include -lm' %(name,name))
    r = os.popen('./%s.o -m500000 -pn' % (name))  
    text = r.read()
    r.close()
    
    file = open('log/%s' % name,'w')
    file.write(text)

for name in list:
    runMurphi(name)
