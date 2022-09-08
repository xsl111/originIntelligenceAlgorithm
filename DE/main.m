%% 差分进化算法（Differential Evolution）------关注公众号“学习算法之路”获取更多算法源代码
popsize = 1000;        % 种群规模
maxIteration = 2000;   % 迭代次数
F = 0.5;               % 缩放因子
CR = 0.3;              % 交叉概率
% 目标函数参数
dim = 30;
LB = -10 * ones(1, dim);
UB = 10 * ones(1, dim);
% 初始化种群
Sol(popsize, dim) = 0;    % 初始化空间
Fitness(popsize) = 0;     % 初始化适应度值
for i = 1:popsize
    Sol(i,:) = LB+(UB-LB).* rand(1, dim);
    Fitness(i) = Fun(Sol(i,:));
end
% 寻找最优个体和最优值
[fbest, bestIndex] = min(Fitness);
globalBest = Sol(bestIndex,:);     % 最优解
globalBestFitness = fbest;         % 最优值
% 开始循环迭代
for time = 1:maxIteration
    for i = 1:popsize
        % 步骤1：变异
        r = randperm(popsize, 5);
        mutantPos = Sol(r(1),:) + F * (Sol(r(2),:) - Sol(r(3),:)) ...
            + F * (Sol(r(4),:) - Sol(r(5),:));
        % 步骤2：交叉
        jj = randi(dim);  % 至少选择一个要更改的维度
        for d = 1:dim
            if rand() < CR || d == jj
                crossoverPos(d) = mutantPos(d);
            else
                crossoverPos(d) = Sol(i,d);
            end
        end
        % 检查是否越界
        crossoverPos(crossoverPos>UB) = UB(crossoverPos>UB);
        crossoverPos(crossoverPos<LB) = LB(crossoverPos<LB);
        % 评估新生成的解并与原始解进行比较。
        evalNewPos = Fun(crossoverPos);
        % 若新的解比原始解要好，则替代
        if evalNewPos < Fitness(i)
            Sol(i,:) = crossoverPos;
            Fitness(i) = evalNewPos;
        end
    end
    % 获取最优个体和最优值
    [fbest, bestIndex] = min(Fitness);
    globalBest = Sol(bestIndex,:);
    globalBestFitness = fbest;   
    % 存储每次迭代的最优值
    FitnessHistory(time) = fbest;   
    % 显示每一代的最优值
    disp(['第' num2str(time),'代:' num2str(fbest)]);
end
% 优化结束，显示结果
disp('优化结束.');
disp(['优化结果:' num2str(globalBestFitness)]);