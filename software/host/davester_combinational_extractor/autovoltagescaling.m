clear all
%% reduce voltage

v=120;
tclk = 20E-9;


%%
slack = import_slack_csv('dc_syn/slack.csv');
for i=1:size(slack,1)
    tau_dc(i) = (tclk - slack{i,2}).*1E-9;
    t_setup(i) = slack{i,3}.*1E-9;
end

if (0)

for i=1:1%size(slack,1)
    slack_meas = 1;
    act_name = slack{i,1};
    v = 120;
    while (slack_meas>0 && v>6)
        vscale(1,i) = slack_meas;
        vscale(2,i) = v;
        slack_meas = tclk - run_spice(act_name,v) + t_setup(i)
        v = v - 1;
    end

end


else
 
  for i=1:size(slack,1)
      done = 0;
      max_v = 120;
      min_v = 60;
      top_v = max_v;
      bot_v = min_v;
      act_v = top_v;
      act_name = slack{i,1};
      slack_meas_prev = 0;
      i
      while (~done)
          slack_meas = tclk - run_spice(act_name,act_v) + t_setup(i);
          if (slack_meas > 0)
              top_v = act_v;
              act_v =  floor(mean([top_v bot_v]))
              slack_meas_prev = slack_meas;
              if (act_v == min_v)
                  done = 1;
                  opt_v(i) = act_v;
                  opt_slack(i) = slack_meas;
              end
          elseif (slack_meas <= 0)  
              bot_v = act_v;
              min_v = act_v;
              act_v = floor(mean([top_v bot_v]))
              if (act_v == min_v)
                  done = 1;
                  opt_v(i) = top_v;
                  opt_slack(i) = slack_meas_prev;
              end
          end
      end
  end  
    
end