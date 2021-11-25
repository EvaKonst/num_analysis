%Erwthma 2
% Author : Ε . ΚΩΝΣΤΑΝΤΟΠΟΥΛΟΥ , ΑΜ 1059560 , Date : 20/2/2020
n=500; 
A = randn(n); 
xsol = rand(n,1); 
b=A'*xsol;

tic;
[x1,fl1,rr1,it1,rv1] = pcg(A'*A,b,[],500);
toc;
%x1 is the computed solution to A*x = b.
%fl1 is a flag indicating whether the algorithm converged.
%rr1 is the relative residual of the computed answer x.
%it1 is the iteration number when x was computed.
%rv1 is a vector of the residual history for ||b−Ax||.

tic;
[x2,fl2,rr2,it2,rv2] = gmres(A,b,100,[],500);
toc;
%x2 is the computed solution to A*x = b.
%fl2 is a flag indicating whether the algorithm converged.
%rr2 is the relative residual of the computed answer x.
%it2 is a two-element vector [outer inner] indicating the inner and outer iteration numbers when x was computed.
%rv2 is a vector of the residual history for ||b−Ax||.

tic;
[x3,fl3,rr3,it3,rv3] = gmres(A,b,500,[],500);
toc;

tic;
x=A\b;
toc;
err=norm(x-xsol)/norm(xsol);

set(0, 'DefaultAxesFontSize', 18);
set(0, 'DefaultLineLineWidth', 2);
figure;

semilogy(0:length(rv1)-1,rv1/norm(b),'bo-'); hold on;
semilogy(0:length(rv2)-1,rv2/norm(b),'k+-');hold on;
semilogy(0:length(rv3)-1, rv3/norm(b), 'g.-'); hold on;
yline(10^(-6),'r--');
legend('pcg','gmres restart: 100','gmres restart: 500','Tol','Location','East');
ylabel('final relative error');
xlabel('maxit');