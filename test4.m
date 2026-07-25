base = 0.2:0.05:0.8;

cg = [];

for h=base

    cg=[cg 0.12+0.15*h];

end

figure

yyaxis left

plot(base,cg,'LineWidth',2)

ylabel('CG')

yyaxis right

plot(base,0.20-cg,'LineWidth',2)

ylabel('Stability Margin')

xlabel('Base Height')

grid on