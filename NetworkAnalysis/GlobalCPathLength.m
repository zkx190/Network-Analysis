function gCP=GlobalCPathLength(G)
%
%   input  
%       G: network of fmri or DTI or EEG (N*N in dimension)
%   output
%       gCP: Global Characteristic Path Length
%      
%
% Author : Asik Zhang
N=size(G,1);
for i=1:N
    for j=1:N
        ncp(i,j)=NodalCPathLength(G,i,j);
    end
end
gCP=sum(sum(ncp))/N/(N-1);

