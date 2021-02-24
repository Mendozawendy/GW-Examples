function sigVec = genSFMSig(dataX,timea,freq0,freq1,snr,specgrmSFMSigDemo)
 
% TO DO
% Generate a Step FM signal
% S = GENSFMSIG(DATAX,TIMEA,FREQ0,FREQ1,SPECGRMSFMSIGDEMO)
% Generate a Step FM signal S. X is vector of the time stamps at which the value of the signal is to
% be computed. 
% SNR is the matched filtering signal-to-noise ratio of S.
% T is the time value for a peal of the curve. 
% Timea is the time value for a peal of the curve. 
% Freq0 is the frequency of sinusoidal oscillation.
% Freq1 is the frequency of sinusoidal oscillation. 
% specgrmSFMSigDemo is the function that generate assigned signal to make a spectrogram 
%SNR * sin(2*pi*freq0*t) ; t <=; ta 
%SNR * sin(2*pi*f1*(t-timea)+2*pi*freq0*timea) ; t >; ta 


%Wendy Mendoza, January 2021


phaseVec = 2*pi*freq0*timea; 
sfmSig = 2*pi*freq1*(dataX-timea)+2*pi*timea);
sigVec = sin(2*pi*freq0*timea); t <=; ta;
sigVec = sin(2*pi*freq1*(dataX-timea)+2*pi*timea); t >; ta;


sigVec = snr*sigVec/norm(sigVec);

end 

 
