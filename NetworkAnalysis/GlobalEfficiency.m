function gE=GlobalEfficiency(G)
%
%   input  
%       G: network of fmri or DTI or EEG (N*N in dimension)
%   output
%       gE: Global Efficiency
%      
%
% Author : Asik Zhang
N=size(G,1);
if (N<2)
    gE=0;
    return
end


for i=1:N
    for j=1:N
        ncp(i,j)=1/NodalCPathLength(G,i,j);
    end
end
ncp(isinf(ncp))=0;
gE=sum(sum(ncp))/N/(N-1);

