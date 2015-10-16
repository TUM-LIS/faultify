clear all

slack = import_slack_csv('dc_syn_fpu_mul/slack.csv');

tclk = 60;
%%
for i=1:size(slack,1)
    tau_dc(i) = (tclk - slack{i,2}).*1E-9;
    t_setup(i) = slack{i,3}.*1E-9;
end

%%
for i=1:size(slack,1)
    i
    act_name = slack{i,1};
    tau(i) = run_spice(act_name,120)+t_setup(i);
end

%%
tau(tau>.1) = 0;
len = size(slack,1);
plot(...%1:len,tclk*1E-9*ones(1,len),...
     1:len,tau,'r-',...
     1:len,tau_dc,'b-')