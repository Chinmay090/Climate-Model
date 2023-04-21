function yprime = system_ex (t , y ) % Defining the system of equations
yprime = zeros (2 ,1) ;
yprime (1) = 0.04725*y(1) - 0.00063084*y(1)*y(1) - 0.00024*y(1)*y(2);
yprime (2) = 0.04041*y(2) - 0.00053737*y(2)*y(2) - 0.00018*y(1)*y(2);