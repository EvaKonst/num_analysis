% Author : Ε . ΚΩΝΣΤΑΝΤΟΠΟΥΛΟΥ , ΑΜ 1059560 , Date : 18/2/2020
%P3 will contain the results for my AM matrix
mxid=1+mod(1059560,2892);
p=1220;
P3=band_stats(mxid,p);

set(0, 'DefaultAxesFontSize', 18);
set(0, 'DefaultLineLineWidth', 2);
figure;

semilogy(P3(1:p,1),'gp--'); hold on;
semilogy(P3(1:p,2),'gp--'); hold on;
legend('rnnz AM','rerr AM');
ylabel('rnnz, rerr');
xlabel('Bandwidth from 0 to 2p+1');