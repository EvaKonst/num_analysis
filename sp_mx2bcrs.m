function[val,col_idx,row_blk]=sp_mx2bcrs(A,nb)
% Author : Ε . ΚΩΝΣΤΑΝΤΟΠΟΥΛΟΥ , ΑΜ 1059560 , Date : 21/2/2020

[m, ~]=size(A);
k=1;
ctr=1;
nnzbl=0;
quo=(m*m)/(nb*nb);
col_idx=zeros(quo,1);
row_blk=zeros((m/nb)+1,1);
row_blk(1)=1;

for i=1:nb:m-1
    for j=1:nb:m-1
        nz=0;
        nz=nnz(A(i:i+nb-1,j:j+nb-1));
        if (nz>0)
            val(:,:,k)= A(i:i+nb-1,j:j+nb-1);
            col_idx(k)=ceil(j/nb);
            k=k+1;
            nnzbl=nnzbl+1;
        end
    end
    row_blk(ctr+1)=row_blk(ctr)+nnzbl;
    nnzbl=0;
    ctr=ctr+1;
end

col_idx= col_idx(1:k-1,1);



    