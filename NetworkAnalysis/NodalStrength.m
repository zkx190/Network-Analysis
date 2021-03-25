function nS=NodalStrength(G,num)
%
%   input  
%       G: network of fmri or DTI or EEG (N*N in dimension)
%       num: the index of the nodal you want to analysis
%   output
%       nS: nodalStrength 
%
% Author : Asik Zhang

nS=sum(G(num,:));
    
    

