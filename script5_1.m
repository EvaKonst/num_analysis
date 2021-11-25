%Erwthma 1
% Author : Ε . ΚΩΝΣΤΑΝΤΟΠΟΥΛΟΥ , ΑΜ 1059560 , Date : 19/2/2020
n=500; 
A1 =spdiags([1:n]',[0],n,n); 
xsol = ones(n,1); 
b1 = A1*xsol;
[x1,fl1,rr1,it1,rv1] = pcg(A1,b1,[],2000);
%x1 is the computed solution to A*x = b.
%fl1 is a flag indicating whether the algorithm converged.
%rr1 is the relative residual of the computed answer x.
%it1 is the iteration number when x was computed.
%rv1 is a vector of the residual history for ||b−Ax||.

A2 =spdiags([linspace(1,2,n/2)';linspace(1000,1001,n/2)'],[0],n,n);
b2 = A2*xsol;
[x2,fl2,rr2,it2,rv2] = pcg(A2,b2,[],2000);


set(0, 'DefaultAxesFontSize', 18);
set(0, 'DefaultLineLineWidth', 2);
figure;

semilogy(0:length(rv1)-1,rv1/norm(b1),'bo-');hold on;
semilogy(0:length(rv2)-1,rv2/norm(b2),'kd-');hold on;
yline(10^(-6),'r--');

legend('A1 matrix','A2 matrix','Tol','Location','East');
ylabel('final relative error');
xlabel('maxit');