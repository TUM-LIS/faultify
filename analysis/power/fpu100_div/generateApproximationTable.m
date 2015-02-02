function generateApproximationTable(ind)
numInj = 268;

if  (ind==1)
        load ../../optimization/matlab/fpu100_div/tt_30.mat
elseif (ind==2)
        load ../../optimization/matlab/fpu100_div/tt_40.mat
elseif (ind==3)
        load ../../optimization/matlab/fpu100_div/tt_50.mat

elseif (ind==4)
    tt = ones(1,numInj);
end

fh = fopen('approximationTable.vhd','w+');

fprintf(fh,'library ieee;\n');
fprintf(fh,'use ieee.std_logic_1164.all;\n');
fprintf(fh,'use ieee.numeric_std.all;\n');

fprintf(fh,'package approximationTable is\n');
fprintf(fh,'constant approximationVector : std_logic_vector(%u-1 downto 0) := (',numInj);
for i=numInj-1:-1:1
    fprintf(fh,'''%u\'',\n',tt(i)~=0.5);
end
fprintf(fh,'''%u'');\n',tt(1)~=0.5);

fprintf(fh,'end package approximationTable;\n');

fclose(fh);

end