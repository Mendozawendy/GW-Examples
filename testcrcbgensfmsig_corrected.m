%% Plot the Step FM signal
% Signal parameters
ta = 0.5; %SDM: semicolon terminator supplied; ta = 5 was outside the duration of 1 sec
%f0= 4; %SDM: This means only 4 cycles per second and you are plotting only 1 second of data
%f1=4; %SDM: Your signal is supposed to have a change in frequency
f0 = 40; %SDM: 40 cycles per second 
f1 = 100; %SDM: frequency changes at t=ta
A = 10;
% Instantaneous frequency after 1 sec is 
%maxFreq = f1*t^1 %SDM: Understand the concept of instantaneous frequency
maxFreq = max(f0,f1); %SDM: This is the max. inst. freq. for your assigned signal
samplFreq = 5*maxFreq;
samplIntrvl = 1/samplFreq;

% Time samples
timeVec = 0:samplIntrvl:1.0;
% Number of samples
nSamples = length(timeVec);

% Generate the Step FM signal
%SDM: What is 'timea'? where is it defined?
%SDM: What is 'freq0'? where is it defined?
%SDM: A computer is an idiot. It cannot guess what you have in mind!
%sigVec = genSFMSig(timeVec,A,timea,freq0,freq1); %SDM: The order of the
%arguments in this call did not match the order of arguments in genSDMSig.
sigVec = genSFMSig(timeVec,A,ta,f0,f1);

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