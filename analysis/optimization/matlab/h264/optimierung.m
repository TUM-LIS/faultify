%% Main entrance for automated optimization
clear all

%@lowerbound;
lb=zeros(1,1992);

%@upperbound;
dpcp = csvread('../../simulator_software/dpcp_0_000500.txt');
% reconstruction filter
d = dpcp;
d(1:1839) = 0;

ub=0.0001*(d>0);

% reset
reset_decoder;

% numGen
numGen = 10;

% Setup genetic algorithm
gaoptions = gaoptimset('PlotFcns',{@gaplotbestf,@gaplotstopping,@gaplotbestindiv,@gaplotgenealogy},...
                        'InitialPopulation',zeros(1,1992),...
                        'Generations',numGen);

% Run genetic optimization                    
[X,fval,exitFlag,output,population,scores] = ga(@optimium,1992,[],[],[],[],lb,ub,[],[],gaoptions);
save output_2.mat
