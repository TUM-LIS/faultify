clear all

slack = import_slack_csv('dc_syn/slack.csv');


for i=1:1%size(slack,1)
    
    act_name = slack{i,1};
    run_spice(act_name)
end
