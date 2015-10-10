%% This function determines the minimal voltage per gate, by checking the 
%% minimal voltage required for each endpoint


%% Load data
load opt_v.mat

slack = import_slack_csv('dc_syn/slack.csv');

for i=1:size(slack,1)
  act_name = slack{i,1};
  str = strcat('dc_syn/',act_name,'_fanin.csv');
  fanin{i} = importfanin(str);
end

%% list of all gates in the circuit

list_cat = [];
for i=1:size(fanin,2)
    list_cat = [list_cat; fanin{i}(:,2)];
end
    

list_of_gates = unique(list_cat);

%% setup
gate_voltage_map.gate = list_of_gates;
gate_voltage_map.voltage = zeros(1,numel(list_of_gates));


%% find the minimal voltage
for i=1:size(slack,1)
    for j=1:size(fanin{i}(:,2))
        idx = find(ismember(gate_voltage_map.gate,fanin{i}(j,2)));
        if gate_voltage_map.voltage(idx) < opt_v(i)
            gate_voltage_map.voltage(idx) = opt_v(i);
        end
    end
end


%% save results
sum_of_voltages_new = sum(gate_voltage_map.voltage)./100;
sum_of_voltages_old = numel(list_of_gates) * 1.2;

saved = 1- sum_of_voltages_new/sum_of_voltages_old;

save sum_of_voltages_new.mat sum_of_voltages_new
save sum_of_voltages_old.mat sum_of_voltages_old
