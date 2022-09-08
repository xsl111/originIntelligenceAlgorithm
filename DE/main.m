%% ��ֽ����㷨��Differential Evolution��------��ע���ںš�ѧϰ�㷨֮·����ȡ�����㷨Դ����
popsize = 1000;        % ��Ⱥ��ģ
maxIteration = 2000;   % ��������
F = 0.5;               % ��������
CR = 0.3;              % �������
% Ŀ�꺯������
dim = 30;
LB = -10 * ones(1, dim);
UB = 10 * ones(1, dim);
% ��ʼ����Ⱥ
Sol(popsize, dim) = 0;    % ��ʼ���ռ�
Fitness(popsize) = 0;     % ��ʼ����Ӧ��ֵ
for i = 1:popsize
    Sol(i,:) = LB+(UB-LB).* rand(1, dim);
    Fitness(i) = Fun(Sol(i,:));
end
% Ѱ�����Ÿ��������ֵ
[fbest, bestIndex] = min(Fitness);
globalBest = Sol(bestIndex,:);     % ���Ž�
globalBestFitness = fbest;         % ����ֵ
% ��ʼѭ������
for time = 1:maxIteration
    for i = 1:popsize
        % ����1������
        r = randperm(popsize, 5);
        mutantPos = Sol(r(1),:) + F * (Sol(r(2),:) - Sol(r(3),:)) ...
            + F * (Sol(r(4),:) - Sol(r(5),:));
        % ����2������
        jj = randi(dim);  % ����ѡ��һ��Ҫ���ĵ�ά��
        for d = 1:dim
            if rand() < CR || d == jj
                crossoverPos(d) = mutantPos(d);
            else
                crossoverPos(d) = Sol(i,d);
            end
        end
        % ����Ƿ�Խ��
        crossoverPos(crossoverPos>UB) = UB(crossoverPos>UB);
        crossoverPos(crossoverPos<LB) = LB(crossoverPos<LB);
        % ���������ɵĽⲢ��ԭʼ����бȽϡ�
        evalNewPos = Fun(crossoverPos);
        % ���µĽ��ԭʼ��Ҫ�ã������
        if evalNewPos < Fitness(i)
            Sol(i,:) = crossoverPos;
            Fitness(i) = evalNewPos;
        end
    end
    % ��ȡ���Ÿ��������ֵ
    [fbest, bestIndex] = min(Fitness);
    globalBest = Sol(bestIndex,:);
    globalBestFitness = fbest;   
    % �洢ÿ�ε���������ֵ
    FitnessHistory(time) = fbest;   
    % ��ʾÿһ��������ֵ
    disp(['��' num2str(time),'��:' num2str(fbest)]);
end
% �Ż���������ʾ���
disp('�Ż�����.');
disp(['�Ż����:' num2str(globalBestFitness)]);