% Simulate a discrete-time dynamical system

% x- population of RABBITS in thousands
% n- time in WEEKS

<<<<<<< HEAD
K=0.6
nMax = 100;% max number of days to simulate
x = ones(7,nMax); % population
x(:,1) = 0.2; % initial condition
r_all=0:.5:3;
for row=1:7
    r=r_all(row);
    for n=2:nMax
    
    x(row,n) = x(row,n-1)+r*(1- (x(row,n-1)/K))*x(row,n-1);
=======
nMax = 20;% max number of days to simulate
x = ones(1,nMax); % population
x(1) = 0.2; % initial condition

for n=2:nMax
    
    x(n) = 1.1*x(n-1);
>>>>>>> d946630762e7e80006c82dc52236f5703a8677c4
    
    end
   %plot
end % finished loop through days
plot(r_all,x(end-3,end))

figure;
plot(x,'-ok');
ylabel('Rabbits (in thousands)');
xlabel('Weeks');