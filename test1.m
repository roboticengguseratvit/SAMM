%% OPTIMAL BASE HEIGHT ANALYSIS

clear; clc; close all;

base_heights = 0.2:0.05:0.8;

L1 = 0.30;
L2 = 0.25;
Lg = 0.10;

bed = 0.50;
table = 0.75;
shelf = 1.20;

results = [];

for h = base_heights

    reach = h + L1 + L2 + Lg;

    bed_ok = reach >= bed;
    table_ok = reach >= table;
    shelf_ok = reach >= shelf;

    score = bed_ok + table_ok + shelf_ok;

    results = [results;
               h reach score];
end

disp(array2table(results,...
'VariableNames',{'BaseHeight','ReachableHeight','ReachScore'}))

figure
plot(results(:,1),results(:,2),'LineWidth',2)
grid on
xlabel('Robot Base Height (m)')
ylabel('Reachable Height (m)')
title('Optimal Robot Height')