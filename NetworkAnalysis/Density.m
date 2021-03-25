function D=Density(G)
%
%   input  
%       G: network of fmri or DTI or EEG (N*N in dimension)
%   output
%       D: density  The density of a network is defined as the ratio of 
%       the number of actually existing edges to the number of the
%        total possible edges
%
% Author : Asik Zhang

N=size(G,1);
D=sum(sum(G>0))/N/(N-1);

