%% Plot the Step FM signal
% Signal parameters
t = 1;
ta = 5;
f0 = 4;
f1 = 4;
A = 10;
%  Instantaneous Frequency after 1s
MaxFreq = t1+2*ta2+f0+f1;
samplFreq = 5*maxFreq;
samplIntrvl = 1/samplFreq;

% Time samples vector
timeVec = 0:samplIntrvl:1.0;

% Number of samples
nSamples = length(timeVec);

% Generate and plot signals
%Signal sample at 5*maximum frequency
genPlotSig(5,argsvector)

%Signal smapled at 4*maximum frequency
genPlotSig(4,argsVector)

% Generate the Step FM signal
sigVec = gensfmsig(timeVec{5},A,[timea{5},freq0{4},freq1{4}]);

%Plot the signal
subplot(1,5,4);
figure;
plot(timeVec,sigVec,'Marker','.','MarkerSize',24);
title('Step FM Signal')
xlabel('Magnitude')
ylabel('Time Sample')





