
clear;

m = input('Enter number of nodal lines m: ');

n = input('Enter number of nodal circles n: ');

f = 2 % select appropriate frequency

resol = 50; %resolution of mesh

maxtime = 20; % time resolution

radius = 12.5; % radius in cm

M = moviein(maxtime);

x = linspace(-radius,radius,resol);

y = x;

[X,Y] = meshgrid(x,y);

R=sqrt(X.^2+Y.^2)+ eps;

theta=atan2(Y,X); % use atan2 to preserve signs

rim = radius*ones(resol); % distance from center to rim

Z = (R <= rim).* besselj(m,f*2.4048/radius*R).*cos(m*theta); % see p.83

tall = max(max(Z)); % save biggest number in matrix for scaling

for i=1:maxtime % loop to cycle through time

arg=i*2*pi/maxtime;

Q = Z*cos(arg);

mesh(Q);

axis([0, resol, 0, resol, -tall, tall]);

pause(0.5);

M(:,i) = getframe;

end

movie(M,10);

