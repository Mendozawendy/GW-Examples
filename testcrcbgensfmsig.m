%% Plot the Step FM signal
% Signal parameters
ta = 0
f0=10;
f1=3;
A = 10;
% Instantaneous frequency after 1 sec is 
maxFreq = f1*t^1
samplFreq = 2*maxFreq;
samplIntrvl = 1/samplFreq;

% Time samples
timeVec = 5:samplIntrvl:1.0;
% Number of samples
nSamples = length(timeVec);

% Generate the signal
sigVec = crcbgensfmsig(timeVec,A,ta,f0,f1); 

%Plot the signal 
figure;
plot(timeVec,sigVec,'Step FM','.','MarkerSize',24);

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