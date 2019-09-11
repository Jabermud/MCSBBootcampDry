eps=0.08;
a=0.5;
b=0.2;

dVdt=@(v,w) v-(1/3)*v^3-w
dWdt=@(v,w) eps(v+a-b*w)

FHN=@(t,x)
% solve system
[T,X] = ode45(dVdt,[0,100],[a,b]...
    );
figure(1); clf; hold on; box on;
plot(T,X,'LineWidth',2);
plot(T,sum(X,2),'--k','LineWidth',2);

%legend('G', 'J', 'GE','sum');