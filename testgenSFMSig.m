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
sigVec = gensfmsig(timeVec,A,timea,freq0,freq1);

%Plot the signal
subplot(1,5,4);
figure;
plot(timeVec,sigVec,'Marker','.','MarkerSize',24);
title('Step FM Signal')
xlabel('Magnitude')
ylabel('Time Sample')

%Plot the periodogram
%--------------
%Length of data 
dataLen = timeVec(end)-timeVec(1);
%DFT sample corresponding to Nyquist frequency
kNyq = floor(nSamples/2)+1;
% Positive Fourier frequencies
posFreq = (0:(kNyq-1))*(1/dataLen);
% FFT of signal
fftSig = fft(sigVec);
% Discard negative frequencies
fftSig = fftSig(1:kNyq);

% Plot the periodogram
figure;
plot(posFreq, abs(fftSig));
title('Step FM Sample')
xlabel('Frequency')
ylabel('Magnitude')

% Generate the signal 
s1 = gensfmsig(timeVec,A1,timea,freq0,freq1);
s2 = gensfmsig(timeVec,A2,timea,freq0,freq1);
s3 = gensfmsig(timeVec,A2,timea,freq0,freq1);

SigVec = s1 +s2 + s3; 

% Low pass filter 
filtOrder = 30; 
sampFreq = 1024;
maxFreq = 2048; 


timeVec = (0:(maxFreq-1))/sampFreq;

% Design a low pass filter

filtOrdr = 30; 
b = fir1(filtordr, (2048/2) / (1024/2)); 

%Apply filters
filtSig = fftfilt(b,sigVec); 

