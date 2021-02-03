function sigVec = crcbgensfmsig(dataX,snr,qcCoefs)
% Generate an Step FM signal
% S = CRCBGENSFMSIG(X,SNR,C)
% Generate a Step FM signal S. X is vector of the time stamps at which the value of the signal is to
% be computed. 
% SNR is the matched filtering signal-to-noise ratio of S and C is the vector of
% three coefficients [ta, f0, f1] that parametrize the phase of the signal:
% f0+f1*t^1. 

%SNR * sin(2*pi*f0*t) ; t <= ta 
%SNR * sin(2*pi*f1*(t-ta)+2*pi*f0*ta) ; t > ta 


%Wendy Mendoza, January 2021


phaseVec = qcCoefs(0)*dataX + qcCoefs(1)*dataX.^1; 
sigVec = snr*sin(2*pi*phaseVec); 
sigVec = snr*sigVec/norm(sigVec);


phaseVec = qcCoefs(0)*dataX + qcCoefs(1)*dataX.^1;
sigVec = snr*sin(2*pi*phaseVec*(t-ta)+2*pi*ta);

t <=; ta
t >; ta 

t = [0:0.005:1]
ta = [0:0.001:1]
f0=5; sigVec = snr*sin(2*pi*phaseVec);
f1=2; sigVec = snr*sin(2*pi*phaseVec*(t-ta)+2*pi*ta);

subplot(4,1,1);
title "Step FM"; 
plot(t,sigVec); title('Step FM');
 
