clear
% CBH_6 = xlsread('D:\MatLab\image_of_result\BH\mydata','FV_CBH_6','1:28');
% CBH = xlsread('D:\MatLab\image_of_result\BH\mydata','CCBH','1:28');
PSO = xlsread('D:\MatLab\MatLab_Source_File\原始算法\mydata','PSO','1:28');
BH = xlsread('D:\MatLab\MatLab_Source_File\原始算法\mydata','BH','1:28');
% WOA = xlsread('D:\MatLab\image_of_result\BH\mydata','WOA','1:28');
% BA = xlsread('D:\MatLab\image_of_result\BH\mydata','BA','1:28');
% CLPSO = xlsread('D:\MatLab\image_of_result\BH\mydata','CLPSO','1:28');
% DE = xlsread('D:\MatLab\image_of_result\BH\mydata','DE','1:28');
% GA = xlsread('D:\MatLab\image_of_result\BH\mydata','GA','1:28');
% GWO = xlsread('D:\MatLab\image_of_result\BH\mydata','GWO','1:28');
% SCA = xlsread('D:\MatLab\image_of_result\BH\mydata','SCA','1:28');

% Copy_of_CBH_7 = xlsread('D:\MatLab\image_of_result\BH\mydata','Copy_of_CBH_7','1:28');

% cABC = xlsread('mydata','CEC_cABC','2:29');
% cSCA = xlsread('mydata','CEC_cSCA','2:29');
% cBA = xlsread('mydata','CEC_cBA','2:29');
% SCA = xlsread('mydata','CEC_SCA','2:29');

for i = 1:28
    i;
    figure (i);
%     plot(CBH_6(i,(1:100)),'r-o','LineWidth',1,'Marker','.','MarkerFaceColor','r');
%     hold on;
%     plot(CBH(i,(1:100)),'g-','LineWidth',1,'Marker','.','MarkerFaceColor','g');
%     hold on;
    plot(PSO(i,(1:100)),'b-','LineWidth',1,'Marker','.','MarkerFaceColor','b');
    hold on;
    plot(BH(i,(1:100)),'c-','LineWidth',1,'Marker','.','MarkerFaceColor','c');
    hold on;
%     plot(WOA(i,(1:100)),'r-','LineWidth',1,'Marker','.','MarkerFaceColor','r');
%     hold on;
%     plot(BA(i,(1:100)),'m-','LineWidth',1,'Marker','.','MarkerFaceColor','m');
%     hold on;
%     plot(CLPSO(i,(1:100)),'k-','LineWidth',1,'Marker','.','MarkerFaceColor','k');
%     hold on;
%     plot(DE(i,(1:100)),'m-','LineWidth',1,'Marker','*','MarkerFaceColor','m');
%     hold on;
%     plot(GA(i,(1:100)),'k-','LineWidth',1,'Marker','.','MarkerFaceColor','k');
%     hold on;
%     plot(GWO(i,(1:100)),'c-','LineWidth',1,'Marker','*','MarkerFaceColor','c');
%     hold on;
%     plot(SCA(i,(1:100)),'y-','LineWidth',1,'Marker','.','MarkerFaceColor','y');
%     hold on;
%     plot(Copy_of_CBH_7(i,(1:100)),'m-','LineWidth',1,'Marker','.','MarkerFaceColor','m');
%     hold on;
%     plot(SCA(i,(1:100)),'c-','LineWidth',1,'Marker','.','MarkerFaceColor','c');
%     hold on;
%     set(gca,'FontName','Times New Roman','FontSize',12)
%     set(gca,'XTick',0:2:20)
%     set(gca,'XTicklabel',{'0','300','600','900','1200','1500','1800','2100','2400','2700','3000'})
    axis ([1 100 -inf inf])
%     axis ([1 100 0 4e5])
    grid off
%     legend('CBH','PSO','WOA','BA','GA','SCA')
    legend('PSO','BH')
    xlabel('Iterations','FontSize',14);
    ylabel('Function Value','FontSize',14);
    saveas(i,strcat('D:\MatLab\MatLab_Source_File\原始算法\result\',num2str(i),'.png'),'png');% 保存帧
end