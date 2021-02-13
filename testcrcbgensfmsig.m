%% Plot the Step FM signal
% Signal parameters
ta = 5
f0= 4;
f1=4;
A = 10;
% Instantaneous frequency after 1 sec is 
maxFreq = f1*t^1
samplFreq = 5*maxFreq;
samplIntrvl = 1/samplFreq;

% Time samples
timeVec = 0:samplIntrvl:1.0;
% Number of samples
nSamples = length(timeVec);

% Generate the Step FM signal
sigVec = genSFMSig(timeVec,A,timea,freq0,freq1); 

%Plot the signal 
figure;
plot(timeVec,sigVec,'Marker','.','MarkerSize',24);
title('Step FM Signal')

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

%Plot periodogram
figure;
plot(posFreq,abs(fftSig));