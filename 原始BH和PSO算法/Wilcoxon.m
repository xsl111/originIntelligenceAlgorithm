clear
clc
% BBA = xlsread('BEO.xlsx','Sheet1');
% BBA_3 = xlsread('BPSOGSA.xlsx','Sheet1');
% 
% p = zeros(29,1);
% h = zeros(29,1);
% 
% for i = 1 : 29
%     [p(i),h(i),stats] = ranksum(BBA(i,:)',BBA_3(i,:)')
% end


% data = xlsread('.xls','Sheet4');
% BBA_3 = xlsread('royalroads.xlsx','Sheet2');
% data = xlsread('data2_1.xlsx','Sheet4');
% data = xlsread('data2_1.xlsx','run30_best');

% data(1)

CCBH = xlsread('D:\MatLab\image_of_result\BH\mydata1','CCBH');
GA = xlsread('D:\MatLab\image_of_result\BH\mydata1','GA');

p = zeros(28,1);
h = zeros(28,1);

for i = 1 : 28
    %   BBA = data(i+29,:);%pcs
    ccbh = CCBH(i,:);
    %     BBA = data(i+87,:);%IEO3
    
    %  BBA_3 = data(i+116,:);%PSO
    %    BBA_3 = data(i+145,:); %GWO
    %    BBA_3 = data(i+174,:); %WOA
    %      BBA_3 = data(i+203,:); %DE
    %     BBA_3 = data(i+232,:); %MVO
    ga = GA(i,:); 
    % [p(i),h(i),stats] = ranksum(BBA',BBA_3','alpha',0.05,'tail','left')
    [p(i),h(i),stats] = ranksum(ccbh',ga','alpha',0.05);
end


