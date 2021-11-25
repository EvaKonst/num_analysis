% Author : Ε . ΚΩΝΣΤΑΝΤΟΠΟΥΛΟΥ , ΑΜ 1059560 , Date : 19/2/2020
%P1 will contain the results for wathen matrix
A=gallery('wathen',10,20);
n=size(A,1);
p=n;
P1=band_stats(A,p);

set(0, 'DefaultAxesFontSize', 18);
set(0, 'DefaultLineLineWidth', 2);
figure;


semilogy(P1(1:p,1),'bo-'); hold on;
semilogy(P1(1:p,2),'bo-'); hold on;
legend('rnnz wathen','rerr wathen');
ylabel('rnnz, rerr');
xlabel('Bandwidth from 0 to 2p+1');