% set up initial conditions
A0=0;
I0=1;
AP=0;
IK=0;
Ptot=100;
Ktot=100;


% set rates
KonA=10;
KoffA=10;
KonI=10;
KoffI=10;
KcatI=10;
KcatA=100;

% create differential equations
dAdt = @(A,AP,IK) -KonI*(Ptot-AP)*A+Koff*AP+KcatA*IK
dIdt = @(I,IK,AP) -KonA*I*(Ktot-IK)+KoffI*KI+KcatI*AP
dAPdt = @(A,AP) KonA*A*(Ptot-AP)-KoffA*AP-KcatI*AP
dIKdt = @(I,

dxdt = @(t,x) [ dGdt(x(1),x(2),x(3));
        dJdt(x(1),x(2),x(3));
        dGEdt(x(1),x(2),x(3)) ];
    
% solve system
[T,X] = ode45(dxdt,[0,100],[G0,J0,ETot]);

%% plot
figure(1); clf; hold on; box on;
plot(T,X,'LineWidth',2);
plot(T,sum(X,2),'--k','LineWidth',2);

legend('G', 'J', 'GE','sum');