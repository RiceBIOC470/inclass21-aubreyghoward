%Inclass 21

%Adam: I appreciate the extension on this assingment. I feel very
%comfortable now after having spent a little more time looking at the
%lecture notes. Thanks again.

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

%Adam:We see that the rate for gene 1 is greater at every point on the
%graph of x vs dx. This is becasue as we increase y, x is also increaseing.
%We see that both reach their asymptotes at the same point around 1, though
%the incrased y value prevents the rate for gene 2 from reaching
%appraoching the rate for gene 1. 
%%
% 2. Consider the following model: 
% dx/dt = y
% dy/dt = (1-x^2)*y - x
% write code that simulates this system for several different starting
% values of x and y. Plot the results and comment on them. 

%Adam: The code below creates a series of plots which represent the change
%in x or y with respect to time, t. The initial case with x and y at zero,
%we see flat lines, implying that x and y will not vary with time. However,
%we can observe shifts in these lines as we change the variables by 1.
%Increasing the lines values drives the peaks of dy earlier in the graph as
%they are able to reach those values sooner with larger starting terms. 
figure(2);
q = 0;
for i = 0:1
    for ii = 0:1
sol2 = ode23(@Q2func,[0 10],[i;ii]);
plot(sol2.x,sol2.y(1,:),'LineWidth',1,'Markersize',20); hold on;
plot(sol2.x,sol2.y(2,:),'LineWidth',1,'MarkerSize',20); hold on;
    q = q+2;
    legendName{q} = ['dx values,y: ' num2str(ii)];
    legendName{q+1} = ['dy values,y: ' num2str(ii) ', x: ' num2str(i)];

     end
end
legend(legendName{1,:});
        

