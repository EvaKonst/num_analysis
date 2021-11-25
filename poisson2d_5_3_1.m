% Author : Ε . ΚΩΝΣΤΑΝΤΟΠΟΥΛΟΥ , ΑΜ 1059560 , Date : 21/2/2020
%θέλω: x_i-i*h_x, i=1,2,... h=1/N+1
%θέλω: y_j-j*h_y, j=N,..., h_y=1/N+1

% Define domain
a = 0; b = 1;
c = 0; d = 1;

% Define grid sizes
M = 5; % number of points
N = 5; % number of points
hx = (b-a)/(M-1); % length of sub-intervals in x-axis
hy = (d-c)/(N-1); % length of sub-intervals in y-axis

% Generate 2D arrays of grids
[X,Y] = meshgrid(a:hx:b,c:hy:d);
h = 1/(N+1);
%f_i,k=G_i,j opou h_x=h_y=h ara M=N=5, 9 equations and 9 unknowns
%AU=F

global w;

% Build triagonal matrix B
r2 = 2*ones(M,1)-(w^2*h^2)/2;
r = -ones(M-1,1);
B = diag(r2,0) + diag(r,1) + diag(r,-1);
% Sparse matrix B
B = sparse(B);
% Build sparse identity matrix
I = speye(M-1);
% Build tridiagonal block matrix A
A = kron(B,I) + kron(I,B);
spy(A);