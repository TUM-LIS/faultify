function [] = emit_netlist(netlist,idx)

numElements = numel(netlist{idx}.path);
elIdx = 0;
for i=1:numElements
    if isfield(netlist{idx}.path{i},'incr')
    if (str2double(netlist{idx}.path{i}.incr) > 0)
        elIdx = elIdx + 1;
        if (strcmp(netlist{idx}.path{i}.element,'(NBUFFX2)'))
           fprintf(1,'x%u ',elIdx);
           fprintf(1,'wire%i udd uss wire%i NBUFFX2\n',elIdx-1,elIdx);
        elseif (strcmp(netlist{idx}.path{i}.element,'(NOR2X0)'))
           fprintf(1,'x%u ',elIdx);
           if (strcmp(netlist{idx}.path{i}.input_pin,'IN1'))
                fprintf(1,'wire%i 0 wire%i udd uss NOR2X0\n',elIdx-1,elIdx);   
           else
                fprintf(1,'wire%i 0 wire%i udd uss NOR2X0\n',elIdx-1,elIdx);
           end
       elseif (strcmp(netlist{idx}.path{i}.element,'(AO222X1)'))
           fprintf(1,'x%u ',elIdx);
           if (strcmp(netlist{idx}.path{i}.input_pin,'IN1'))
                fprintf(1,'wire%i 0 0 0 0 0 wire%i udd uss AO222X1\n',elIdx-1,elIdx);   
           elseif (strcmp(netlist{idx}.path{i}.input_pin,'IN2'))
                fprintf(1,'0 wire%i 0 0 0 0 wire%i udd uss AO222X1\n',elIdx-1,elIdx);
           elseif (strcmp(netlist{idx}.path{i}.input_pin,'IN3'))
                fprintf(1,'0 0 wire%i 0 0 0 wire%i udd uss AO222X1\n',elIdx-1,elIdx);
           elseif (strcmp(netlist{idx}.path{i}.input_pin,'IN4'))
                fprintf(1,'0 0 0 wire%i 0 0 wire%i udd uss AO222X1\n',elIdx-1,elIdx);
           elseif (strcmp(netlist{idx}.path{i}.input_pin,'IN5'))
                fprintf(1,'0 0 0 0 wire%i 0 wire%i udd uss AO222X1\n',elIdx-1,elIdx);
           elseif (strcmp(netlist{idx}.path{i}.input_pin,'IN6'))
                fprintf(1,'0 0 0 0 0 wire%i wire%i udd uss AO222X1\n',elIdx-1,elIdx);     
           end
           
        elseif (strcmp(netlist{idx}.path{i}.element,'(DFFARX1)'))
            fprintf(1,'x%u ',elIdx);
            if (strcmp(netlist{idx}.path{i}.output_pin,'Q'))
                fprintf(1,'clk wire%i wire%i 0 1 udd uss DFFARX1\n',elIdx-1,elIdx);
            else
                fprintf(1,'clk wire%i 0 wire%i 1 udd uss DFFARX1\n',elIdx-1,elIdx);
            end    
        else
            disp('ERROR')
            netlist{idx}.path{i}.element
        end
    end
    end
end

end
