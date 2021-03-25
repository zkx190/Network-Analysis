function nD=NodalDegree(G,num)
%
%   input  
%       G: network of fmri or DTI or EEG (N*N in dimension)
%        num: the index of nodel analysed
%   output
%       nD: Degree of node num
%      
nD=sum(G(num,:)>0);

