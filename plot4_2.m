% Author : Ε . ΚΩΝΣΤΑΝΤΟΠΟΥΛΟΥ , ΑΜ 1059560 , Date : 18/2/2020
%P2 will contain the results for rajat04 matrix
rajat = load('rajat04.mat');
R=cell2mat(struct2cell(rajat));
A=R.A;
p=size(A,1);
P2=band_stats(A,p);

set(0, 'DefaultAxesFontSize', 18);
set(0, 'DefaultLineLineWidth', 2);
figure;

semilogy(P2(1:p,1),'kd--'); hold on;
semilogy(P2(1:p,2),'kd--'); hold on;
legend('rnnz rajat04','rerr  rajat04');
ylabel('rnnz, rerr');
xlabel('Bandwidth from 0 to 2p+1');