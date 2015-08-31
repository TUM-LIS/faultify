function [netlist]  = extract_from_full_timing_report(path)

fh = fopen(path,'r');

start_pattern = 'Startpoint';
end_pattern = 'slack';
des_pattern = 'Des/Clust/Port';
point_start_pattern = 'Point                                    Incr       Path';
point_end_pattern = 'data arrival time';

%% Header
line_read = fgetl(fh);
while (isempty(strfind(line_read,start_pattern)))
    line_read = fgetl(fh);
end

idx = 1;

%% here we should iterate over all endpoints
while (1)
    
        % startpoint
        [unused_token act_startpoint] = strtok(line_read);
        % edge
        %line_read = fgetl(fh);
        % endpoint
        line_read = fgetl(fh);
        [unused_token act_endpoint] = strtok(line_read);
        % path group
        line_read = fgetl(fh);
        % path type
        line_read = fgetl(fh);
        
        if feof(fh)
            break;
        end
        
        % Des/Clust/Port
        line_read = fgetl(fh);
        while (isempty(strfind(line_read,des_pattern)))
            line_read = fgetl(fh);
        end
        
        % points start pattern
        line_read = fgetl(fh);
        while (isempty(strfind(line_read,point_start_pattern)))
            line_read = fgetl(fh);
        end
        % -----
        line_read = fgetl(fh);
        % clock clk
        line_read = fgetl(fh);
        % clock network delay
        line_read = fgetl(fh);
        % register clock
        line_read = fgetl(fh);
        % we should now be at Q
        
        i = 1;
        act_path = {};
        alternating_flag = 0;
        while (isempty(strfind(line_read,point_end_pattern)))
            line_read = fgetl(fh);
            if (alternating_flag==0)
                if (isempty(strfind(line_read,point_end_pattern)))
                    [tmp, line_read] = strtok(line_read);
                    [act_path{i}.instance, tmp] = strtok(tmp,'/');
                    [act_path{i}.output_pin] = strtok(tmp,'/');
                    [act_path{i}.element, line_read] = strtok(line_read);
                    [act_path{i}.incr, line_read] = strtok(line_read);
                    [act_path{i}.path, line_read] = strtok(line_read);
                    [act_path{i}.output_rf, line_read] = strtok(line_read);
                    alternating_flag =1;
                    i = i+1;
                 end
            elseif alternating_flag==1
                if (isempty(strfind(line_read,point_end_pattern)))
                    [tmp, line_read] = strtok(line_read);
                    [act_path{i}.instance, tmp] = strtok(tmp,'/');
                    [act_path{i}.input_pin] = strtok(tmp,'/');
                    [act_path{i}.element, line_read] = strtok(line_read);
                    [act_path{i}.wire_delay_incr, line_read] = strtok(line_read);
                    [act_path{i}.wire_delay_path, line_read] = strtok(line_read);
                    [act_path{i}.input_rf, line_read] = strtok(line_read);               
                end
                alternating_flag = 0;
            end
            
        end
        
        while (isempty(strfind(line_read,'slack')))
            line_read = fgetl(fh);
        end
        tmp = strsplit(line_read);
        act_slack = str2double(tmp(4));
        
        % two empty lines, next one should be startpoint or eof
        line_read = fgetl(fh);
        line_read = fgetl(fh);
        line_read = fgetl(fh);
        
        %%
        netlist{idx}.startpoint = act_startpoint;
        netlist{idx}.endpoint = act_endpoint;
        netlist{idx}.path = act_path;
        netlist{idx}.slack = act_slack;
        
             
        idx = idx + 1

        
   
    
end

%%


%%
fclose(fh);


end
