%% Main entrance for automated optimization
clear all

%@lowerbound;
lb=zeros(1,216);

%@upperbound;
dpcp = csvread('dpcp_b14.txt');
% reconstruction filter
d = dpcp;
%d(1:216) = 0;

ub=0.001*(d>0);


% numGen
numGen = 50;

% Setup genetic algorithm
gaoptions = gaoptimset('PlotFcns',{@gaplotbestf,@gaplotstopping,@gaplotbestindiv,@gaplotgenealogy},...
                        'InitialPopulation',zeros(1,216),...
                        'Generations',numGen);

% Run genetic optimization                    
[X,fval,exitFlag,output,population,scores] = ga(@optimum,216,[],[],[],[],lb,ub,[],[],gaoptions);
save output.mat
