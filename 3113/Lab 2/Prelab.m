clear
clc 
close all

%% H_exp
th1 = 1 + (3/8);  %inches 
             
alpha = 4.8 * 10^-5;

T_St = [ 21.3 24.6 28.1 31.4 34.9 38.0 42.2 46.2];
T_Br = [ 16.1 17.5 19.0 20.4 21.9 23.3 24.8 26.2];
T_Al = [ 14.4 14.8 15.5 16.1 16.9 17.5 18.3 19.0];
x =  th1:0.5:th1 +(0.5*7) ;

Temp_St = polyfit(x,T_St,1);
Temp_Br = polyfit(x,T_Br,1);
Temp_Al = polyfit(x,T_Al,1);

H_St = Temp_St(1);
T0_St = Temp_St(2);

H_Br = Temp_Br(1);
T0_Br = Temp_Br(2);

H_Al = Temp_Al(1);
T0_Al = Temp_Al(2);

Tx_St = H_St*x + T0_St;
Tx_Br = H_Br*x + T0_Br;
Tx_Al = H_Al*x + T0_Al;

figure
plot(x,T_St,'rx')
hold on
plot(x,Tx_St,'b-')
xlabel('Distance Along Rod (in)')
ylabel('Temperature (C)')
title('Steel')

figure
plot(x,T_Br,'rx')
hold on
plot(x,Tx_Br,'b-')
xlabel('Distance Along Rod (in)')
ylabel('Temperature (C)')
title('Brass')


figure
plot(x,T_Al,'rx')
hold on
plot(x,Tx_Al,'b-')
xlabel('Distance Along Rod (in)')
ylabel('Temperature (C)')
title('Aluminium')

%% H_analytical





%% Q5
% syms n t 
% n_array = [ 1:10 ];
% t = [1 1000];
% L = x(end) + 1;
% x = L-1;
% L = L*0.0254;
% x = x* 0.0254;
% H = H/0.0254;
% b_n = ((4*H*L)/((2*n-1)*pi)^2)*((pi*(2*n-1))*sin(pi*n) + 2*cos(pi*n));
% 
% u = zeros(length(n_array),length(t));
% 
% for i = 1:length(t)
%     for j = 1:length(n_array)
%   
%        sum = symsum(((-1).^(n) *8*H*L) / (( 2*(n) - 1) .^2 * pi^2).*sin( ((2*(n)-1)*pi)/(2*L)*x ) *exp(- ( ((2*(n)-1)*pi)/(2*L) )^2*alpha * t(i))...
%             ,n,1,j-1);
%         u(j,i) = T_0 + H*x + sum;
%         
%     end 
% end
% 
% figure(2)
% 
% subplot(2,1,1)
% plot(n_array(:),u(:,1),'*-r')
% xlabel('# of Fourier Terms')
% ylabel('T [C]')
% title('t = 1s')
% 
% subplot(2,1,2)
% plot(n_array,u(:,2),'*-r')
% xlabel('# of Fourier Terms')
% ylabel('T [C]')
% title('t = 1000s')
% 
% sgtitle('Temperature Convergence')

