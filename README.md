# Finite-Impulse-Response-FIR-Filter-
This is C++ algorithm, and convolution kernel generator with MATLAB

1.</br>
Open "fir coeff gen.m" file with MATLAB</br>
</br>
2.</br>
Setting parameter(Fc, Fs, N, window function) and coefficient type(LPF, HPF, BPF)</br>
</br>
3.</br>
Gen coefficient file N.txt, N = taps</br> 
Unit impulse response of fir filter</br> 
C++ array format for example : </br></br>
167.txt</br>
0.0015893,0.0018612,0.002026,0.0020755,0.0020047,0.0018123,0.0015006,0.0010755,0.00054665,-7.3053e-05,-0.00076747,-0.0015178,-0.0023028,-0.0030999,-0.0038851,-0.0046342,-0.0053232,-0.0059295,-0.0064317,-0.0068114,-0.0070528,-0.0071441,-0.0070774,-0.0068492,-0.006461,-0.0059188,-0.0052337,-0.0044212,-0.0035014,-0.0024983,-0.0014392,-0.00035412,0.00072491,0.0017648,0.0027323,0.0035948,0.0043216,0.0048847,0.0052594,0.0054256,0.0053686,0.005079,0.0045542,0.003798,0.0028211,0.0016411,0.00028227,-0.0012247,-0.0028434,-0.0045321,-0.0062451,-0.007933,-0.0095444,-0.011027,-0.012328,-0.013398,-0.014187,-0.014654,-0.014757,-0.014466,-0.013756,-0.012609,-0.011018,-0.0089831,-0.0065162,-0.0036373,-0.00037597,0.0032289,0.0071303,0.011273,0.015597,0.020035,0.024516,0.028966,0.033312,0.037479,0.041395,0.044991,0.048203,0.050974,0.053254,0.055001,0.056184,0.056781,0.056781,0.056184,0.055001,0.053254,0.050974,0.048203,0.044991,0.041395,0.037479,0.033312,0.028966,0.024516,0.020035,0.015597,0.011273,0.0071303,0.0032289,-0.00037597,-0.0036373,-0.0065162,-0.0089831,-0.011018,-0.012609,-0.013756,-0.014466,-0.014757,-0.014654,-0.014187,-0.013398,-0.012328,-0.011027,-0.0095444,-0.007933,-0.0062451,-0.0045321,-0.0028434,-0.0012247,0.00028227,0.0016411,0.0028211,0.003798,0.0045542,0.005079,0.0053686,0.0054256,0.0052594,0.0048847,0.0043216,0.0035948,0.0027323,0.0017648,0.00072491,-0.00035412,-0.0014392,-0.0024983,-0.0035014,-0.0044212,-0.0052337,-0.0059188,-0.006461,-0.0068492,-0.0070774,-0.0071441,-0.0070528,-0.0068114,-0.0064317,-0.0059295,-0.0053232,-0.0046342,-0.0038851,-0.0030999,-0.0023028,-0.0015178,-0.00076747,-7.3053e-05,0.00054665,0.0010755,0.0015006,0.0018123,0.0020047,0.0020755,0.002026,0.0018612,0.0015893
</br></br>
4.</br>
Copy coefficient to first parameter(double *coefficients) of FIR-class construct, and setting second parameter(unsigned number_of_taps) taps+1(e.g N=167 + 1)</br>
</br>
5.</br>
result = FIR.filter(signal);</br>

</br>
</br>
example : </br>
> g++ -o2 -o main main.cpp FIR.cpp --std=c++11</br>

> ./main ./ECG\ ATM\ 104\ Special\ case.txt  output.txt</br>
![alt text](https://github.com/GCY/Finite-Impulse-Response-FIR-Filter-/blob/master/CPP%20FIR%20Algorithm/result.png?raw=true)

</br></br>
PhysioBank ATM</br>
https://www.physionet.org/cgi-bin/atm/ATM</br>
