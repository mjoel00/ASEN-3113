% HW 8 - question 21-21
% 
% Matthew Pabin

clear
clc
close all

c0 = 2.9979 * 10^14;     % m/s
h = 6.6207 * 10^6;             % J*s
k = 1.3805 * 10^-17;    % J/K
T = 5780;               % K

lambda = (0.01:1000);    %m
c1 = 3.742 * 10^8;
c2 = 1.439 * 10^4;


E = (lambda.^(5).*(exp(c2./(lambda.*T))-1));
E = c1./E;
plot(lambda,E)