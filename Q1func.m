function [dx] = Q1func (t,StartArray)
dx = zeros(2,1);
% Lek k,k2 = 2. d,d2 = 4;
x = StartArray(1);
y = StartArray(2);
dx(1) = 2-4.*x; %k - d*x
dx(2) = 2.*x-4.*y;  %k2*x - d2*y
sol2 = ode23(@Q2func,[0 10],[i;ii]);
end