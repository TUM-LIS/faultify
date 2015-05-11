function [] = emit_netlist(netlist,idx)

numElements = numel(netlist{idx}.path)

for i=1:numElements
    netlist{idx}.path{i}.element
    netlist{idx}.path{i}.instance
end

end