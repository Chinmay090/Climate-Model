% Model of the relative humidity and air temperature
% Based on Lotka-Volterra model

[t,y] = ode45(@system_ex,[1,2000],[63,58.2]);

figure(1);subplot(1,2,1);
plot(t,y(:,1));xlabel("time");ylabel("Relative Humidity");grid on;
hold on;

subplot(1,2,2);
plot(t,y(:,2));xlabel("time");ylabel("Air Temperature");grid on;