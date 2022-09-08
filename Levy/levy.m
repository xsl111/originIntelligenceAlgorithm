%% levy: ��ά���л���
% ����
% pop����Ⱥ���� 
% VarMin������  
% VarMax������
% ���
% newpop�� ��������Ⱥ����
function newpop=levy(pop,VarMin,VarMax)
[N,D]=size(pop);
beta=1.5;    % ͨ��ȡֵΪ1.5
sigma_u=(gamma(1+beta)*sin(pi*beta/2)/(beta*gamma((1+beta)/2)*2^((beta-1)/2)))^(1/beta);
sigma_v=1;  
u=normrnd(0,sigma_u,N,D);    % ������̬�ֲ��������
v=normrnd(0,sigma_v,N,D);
step=u./(abs(v).^(1/beta));    % ����
pop=pop+1.*step ;
% ����߽�
pop(find(pop>VarMax))=VarMax; 
pop(find(pop<VarMin))=VarMin;
newpop=pop;
end