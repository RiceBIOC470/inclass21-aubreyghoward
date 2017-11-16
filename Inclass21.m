
clear all
% 1. Consider the system we discussed in class for a gene which is produced
% and degraded: dx/dt = k - d*x. Now consider that this gene turns on a
% second gene y, which also degrades so that its equation is 
% dy/dt = k2*x - d2*y. Choose some values for k,d,k2, and d2 and run a
% numerical simulation of this system for the case where both genes start
% out off ( x(0) = 0 and y(0) = 0). Plot the value of x and y in time and 
% explain your results. 

% Lek k,k2 = 2. d,d2 = 4;

sol = ode23(@Q1func,[0 4],[0;0]);
figure(1);
plot(sol.x,sol.y(1,:),'b.-','LineWidth',1,'Markersize',20); hold on;
plot(sol.x,sol.y(2,:),'g.-','LineWidth',1,'MarkerSize',20);
legend('Rate for Gene 1','Rate for Gene 2');
hold off;

% 2. Consider the following model: 
% dx/dt = y
% dy/dt = (1-x^2)*y - x
% write code that simulates this system for several different starting
% values of x and y. Plot the results and comment on them. 

for i = 1:2
    for ii = 1:2
sol2 = ode23(@Q2func,[0 10],[i;ii]);
figure(2);
plot(sol2.x,sol2.y(1,:),'b.-','LineWidth',1,'Markersize',20); hold on;
plot(sol2.x,sol2.y(2,:),'g.-','LineWidth',1,'MarkerSize',20); hold on;
    end
end

