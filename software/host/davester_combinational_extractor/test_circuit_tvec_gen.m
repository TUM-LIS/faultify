clear all

numRep = 10;

fh = fopen('test_circuit.tvec','w+');

for i=1:numRep

A = rand>0.5;
B = rand>0.5;
C = rand>0.5;

D = and(B,C);
E = or(B,C);
F = and(E,A);
G = or(D,F);

fprintf(fh,'%i,%i,%i,%i\n',A,B,C,G);

end



fclose(fh);