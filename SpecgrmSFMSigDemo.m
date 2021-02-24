%% Spectrogram demo
addpath ../SIGNALS
sampFreq = 1024;
nSamples = 2048;
timeVec = (0:(nSamples-1))/sampFreq;

%% Step FM Signal 
% Signal parameters
t = 1;
ta = 5;
f0 = 4;
f1 = 4;
A = 10;

%%
% Generate the Step FM signal
sigVec = gensfmsig(timeVec,A,timea,freq0,freq1);

%% 
% Make spectrogram with different time-frequency resolution

figure;
spectrogram(sigVec, 128,127,[],sampFreq);
figure;
spectrogram(sigVec, 256,250,[],sampFreq);

%%
% Make plots independently of the spectrogram function
[S,F,T]=spectrogram(sigVec, 256,250,[],sampFreq);
figure;
imagesc(T,F,abs(S));axis xy;
xlabel('Time (sec)');
ylabel('Frequency (Hz)'); 