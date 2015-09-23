clear all

slack = import_slack_csv('dc_syn/slack.csv');

tclk = 20;
%%
for i=1:size(slack,1)
    tau_dc(i) = (tclk - slack{i,2}).*1E-9;
    t_setup(i) = slack{i,3}.*1E-9;
end

%%
for i=1:size(slack,1)
    i
    act_name = slack{i,1};
    tau(i) = run_spice(act_name,12)+t_setup(i);
end

%%
plot(1:size(slack,1),tau,'r-',1:size(slack,1),tau_dc,'b-')