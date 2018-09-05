%N    = 1;      % Order


Fc1  = 0.35;      % First Cutoff Frequency
Fc2  = 10;      % Second Cutoff Frequency
Fs = 360; % Sampling Rate
flag = 'scale';  % Sampling Flag
Beta = 0.5;      % Window Parameter
for N = 1:250
% Create the window vector for the design algorithm.
win = kaiser(N+1, Beta);
% Calculate the coefficients using the FIR1 function.
b  = fir1(N, [Fc1 Fc2]/(Fs/2), 'bandpass', win, flag);
dlmwrite(strcat(num2str(N),'.txt'), b);
end

%High Pass Filter%
%{
Fc = 0.9;      % Cutoff Frequency
Fs = 360; % Sampling Rate
flag = 'scale';  % Sampling Flag
Beta = 2;      % Window Parameter
for N = 2:2:250
% Create the window vector for the design algorithm.
win = kaiser(N+1, Beta);
% Calculate the coefficients using the FIR1 function.
b  = fir1(N, Fc/(Fs/2), 'high', win, flag);
dlmwrite(strcat(num2str(N),'.txt'), b);
end
%}

%Low Pass Filter%
%{
Fc = 2;      % Cutoff Frequency
Fs = 360; % Sampling Rate
flag = 'scale';  % Sampling Flag
Beta = 0.5;      % Window Parameter
for N = 2:2:250
% Create the window vector for the design algorithm.
win = kaiser(N+1, Beta);
% Calculate the coefficients using the FIR1 function.
b  = fir1(N, Fc/(Fs/2), 'low', win, flag);
dlmwrite(strcat(num2str(N),'.txt'), b);
end
%}