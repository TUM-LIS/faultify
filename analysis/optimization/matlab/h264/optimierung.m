%% Main entrance for automated optimization
clear all
stelle=418;

%@lowerbound;
lb=zeros(1,418);

%@upperbound;
ub=0.001*ones(1,418);

% reset
reset_decoder;

% numGen
numGen = 50;

% Setup genetic algorithm
gaoptions = gaoptimset('PlotFcns',{@gaplotbestf,@gaplotstopping,@gaplotbestindiv,@gaplotgenealogy},...
                        'InitialPopulation',zeros(1,418),...
                        'Generations',numGen);

% Run genetic optimization                    
[X,fval,exitFlag,output,population,scores] = ga(@optimium,418,[],[],[],[],lb,ub,[],[],gaoptions);
save output_2.mat
