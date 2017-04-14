% HAZUKI CHINO 1487908
% MECE5397: B01-6, PROJECT B DIFFUSION EQUATION 

% APR9: implicit Basic Program

% Updateable constants
h=0.1 ; 
dt=0.01;  % time step
t= 1 ;    % time total
y = 0:h:2*pi  ;

% setting up initial conditions
n=size(x)     ; 
time=t/dt    ;      %get rid of this???
u=zeros(n) ;
u(n,:)=(x.^2).*sin(x./4);
u(1,:)=cos(pi*x).*cosh(2*pi-x);

% setting up tridiagonal
A=zeros(n);
A(1,1)= 1-2*dt/(h^2);
A(1,2)= dt/(h^2);
for i=2:n
    A(i,i-1)=dt/(h^2);
    A(i,i)=1-1-2*dt/(h^2);
    A(i,i+1)=dt/(h^2);
end
B=inv(A);

for i=2:n
    e(i) = B(i+1,i);
    f(i) = B(i,i);
    g(i) = B(i,i+1);
end

r=zeros


        
        


% 
