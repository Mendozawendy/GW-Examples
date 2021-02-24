%% Spectrogram demo
sampFreq = 1024;
nSamples = 2048;
timeVec = (0:(nSamples-1))/sampFreq;

%% Step FM Signal 
% Signal parameters
ta = 1;% SDM: 'timea' is not recognized by the computer as 'ta' below 
f0 = 50;% SDM: 'freq0' is not recognized by the computer as 'f0' below
f1 = 100;
A = 10;

%%
% Generate the Step FM signal
%SDM: function name 'gensfmsig' did not match the actual name 'genSFMSig'
sigVec = genSFMSig(timeVec,A,ta,f0,f1);
plot(timeVec,sigVec);
%% 
% Make spectrogram with different time-frequency resolution

% figure;
% spectrogram(sigVec, 128,127,[],sampFreq);
% figure;
% spectrogram(sigVec, 256,250,[],sampFreq);

%%
% Make plots independently of the spectrogram function
[S,F,T]=spectrogram(sigVec, 256,250,[],sampFreq);
figure;
imagesc(T,F,abs(S));axis xy;
xlabel('Time (sec)');
ylabel('Frequency (Hz)'); 