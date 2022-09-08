%% °×¾¨ÓÅ»¯Ëã·¨£¨Beluga Whale Optimization£©
clc;
clear 
close all
Function_name = 'F1';   % function name
Npop = 50;      % Number of search agents
Max_it = 1000;  % Maximum number of iterations
[lb,ub,nD,fobj]=Get_Functions_details(Function_name);
[xposbest,fvalbest,Curve]=BWO(Npop,Max_it,lb,ub,nD,fobj);
semilogy(Curve,'Color','r')
title('Convergence curve')
xlabel('Iteration');
ylabel('Best score obtained so far');
axis tight
grid off
box on
legend('BWO')
display(['The best solution obtained by BWO is : ', num2str(xposbest)]);
display(['The best optimal value of the objective funciton found by BWO is : ', num2str(fvalbest)]);      