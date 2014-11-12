%% Main entrance for automated optimization

stelle=418;

%@lowerbound;
lb=zeros(1,418);

%@upperbound;
ub=0.01*ones(1,418);

% reset
reset_decoder;

% Setup genetic algorithm
gaoptions = gaoptimset('PlotFcns',{@gaplotbestf,@gaplotstopping,@gaplotbestindiv,@gaplotgenealogy},...
                        'InitialPopulation',zeros(1,418),...
                        'Generations',100);

% Run genetic optimization                    
[X,fval,exitFlag,output,population,scores] = ga(@optimium,418,[],[],[],[],lb,ub,[],[],gaoptions);

fprintf('X=: %g\n', X);