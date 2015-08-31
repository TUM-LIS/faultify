function [] = emit_netlist(netlist,idx)

% NAME, num_pos, in_pos, out_pos, VDD_pos, VSS_pos
spice_gate_map = {...
    '(NBUFFX4)',4,1,4,2,3;
    '(INVX0)',4,1,4,2,3 ;
    '(NAND3X0)',6,1,4,5,6;
    '(OR2X1)',5,1,3,4,5;
    '(NOR2X0)',5,1,3,4,5;
    '(NAND4X0)',7,1,5,6,7;
    '(NOR4X0)',7,1,5,6,7;
    '(OA22X1)',7,1,5,6,7;
    '(AO22X1)',7,1,5,6,7;
    '(AND2X1)',5,1,3,4,5;
    '(AO221X1)',8,1,6,7,8;
    '(NAND2X1)',5,1,3,4,5};

numElements = numel(netlist{idx}.path)
elIdx = 0;
for i=1:numElements
    if (str2double(netlist{idx}.path{i}.incr) > 0)
        elIdx = elIdx + 1;
        if (lookForGateInList(netlist{idx}.path{i}.element,spice_gate_map))
            % instance
            fprintf(1,'x%u ',elIdx);
            listIdx = lookForGateInList(netlist{idx}.path{i}.element,spice_gate_map);
            for p = 1:cell2mat(spice_gate_map(listIdx,2))
                str{p} = '0';
            end
            % ports
            str{cell2mat(spice_gate_map(listIdx,3))} = ['wire' num2str(elIdx-1)];
            str{cell2mat(spice_gate_map(listIdx,4))} = ['wire' num2str(elIdx)];
            str{cell2mat(spice_gate_map(listIdx,5))} = ['vdd'];
            str{cell2mat(spice_gate_map(listIdx,6))} = ['vss'];
            
            for p = 1:cell2mat(spice_gate_map(listIdx,2))
                fprintf(1,'%s ',str{p});
            end
            tmp = netlist{idx}.path{i}.element;
            tmp = strtok(tmp,'(');
            tmp = strtok(tmp,')');
            fprintf(1,'%s\n',tmp);
        elseif (  strcmp(netlist{idx}.path{i}.element,'(DFFX1)'))
            fprintf(1,'x%u ',elIdx);
            if (strcmp(netlist{idx}.path{i}.instance(end),'D'))
                fprintf(1,'clk wire%i wire%i 0 vdd vss DFFX1\n',elIdx-1,elIdx);
            else
                fprintf(1,'clk wire%i 0 wire%i vdd vss DFFX1\n',elIdx-1,elIdx);
            end
        else
            disp('ERROR')
            netlist{idx}.path{i}.element
        end
    end
end

end