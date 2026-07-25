%% OPERATION ANALYSIS

terrain = ["Indoor","Outdoor"];

friction = [0.75 0.40];

slope = [0 10];

payload = [0.5 1.0];

table = table();

for i=1:length(terrain)

    safe = friction(i)>0.5 && slope(i)<5;

    table=[table;
        {terrain(i),friction(i),slope(i),payload(i),safe}];

end

table.Properties.VariableNames={

'Environment'
'Friction'
'Slope'
'Payload'
'Safe'
}

disp(table)