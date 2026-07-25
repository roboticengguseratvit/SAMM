%% STABILITY TEST

clear

diameters = 0.30:0.05:0.60;

payloads = 0:0.25:3;

L1 = 0.30;
L2 = 0.25;
Lg = 0.10;

m_chassis = 2;
m_battery = 1.2;
m_arm = 0.8;

figure
hold on

for d = diameters

    radius = d/2;

    margins = [];

    for p = payloads

        total = m_chassis + m_battery + m_arm + p;

        cg = (m_arm*((L1+L2)/2)+p*(L1+L2+Lg))/total;

        margin = radius-cg;

        margins=[margins margin];

    end

    plot(payloads,margins,'LineWidth',2)

end

grid on

xlabel('Payload (kg)')
ylabel('Stability Margin (m)')

legend('300','350','400','450','500','550','600')