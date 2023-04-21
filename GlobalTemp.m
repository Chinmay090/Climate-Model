% Global Temperature Model
% Based on A slight variation of the Stefan-Boltzmann law

span = [0 50];
C = 2.912; % Heat capacity in W/yr
alpha = 0.3; % Albedo of Earth
epsilon = 0.8; % Assumed value of Greenhouse constant
boltzconst = (5.67)*(10^(-8)); % Boltzmann Constant
Q = 341.9; 
T0 = 286.9; % 20th century average global temperature in Kelvin, as per NOAA USA

Tprime = @(t,T) (Q*(1-alpha)) - (boltzconst*(T^4));

[t,T] = ode45(Tprime, span, T0);

figure;
plot(t,T);grid on;xlabel('Time');ylabel('Global Temperature');


