payload = 0:0.1:3;

torque = payload*9.81*0.55;

figure

plot(payload,torque,'LineWidth',2)

xlabel('Payload')

ylabel('Shoulder Torque')

grid on