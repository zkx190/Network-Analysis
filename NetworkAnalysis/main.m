% main
filedir='D:\DATA\PREPOST\panda\NETworkanalysis\post3thres\';
files = dir(filedir);
files=files(3:end);

I=[1 2 2 1 2 2 1 1 2 1 1 1 2 2 1 1 ];

% % all G
% for i=1:length(files)
%     load([filedir files(i).name]);
%     parameter(i,1)=GlobalStrength(FA);
%     parameter(i,2)=Density(FA);
%     parameter(i,3)=GlobalClusterCoefficient(FA);
%     parameter(i,4)=GlobalCPathLength(FA);
%     parameter(i,5)=GlobalEfficiency(FA);
%     parameter(i,6)=LocalEfficiency(FA);    
% end

% half G

    Odd=1:2:90;
    Even=2:2:90;
    
for i=1:length(files)
    load([filedir files(i).name]);

    FA=FA(Odd,:);
    FA=FA(:,Odd);
    parameter(i,1)=GlobalStrength(FA);
    parameter(i,2)=Density(FA);
    parameter(i,3)=GlobalClusterCoefficient(FA);
    parameter(i,4)=GlobalCPathLength(FA);
    
    parameter(i,5)=GlobalEfficiency(FA);
    parameter(i,6)=LocalEfficiency(FA);    
end

for i=1:length(files)
    load([filedir files(i).name]);

    FA=FA(Even,:);
    FA=FA(:,Even);
    parameter1(i,1)=GlobalStrength(FA);
    parameter1(i,2)=Density(FA);
    parameter1(i,3)=GlobalClusterCoefficient(FA);
    parameter1(i,4)=GlobalCPathLength(FA);
    i
    parameter1(i,5)=GlobalEfficiency(FA);
    
    parameter1(i,6)=LocalEfficiency(FA);    
end

for i=1:length(I)
    if i==1
        temp=parameter(i,:);
        parameter(i,:)=parameter1(i,:);
        parameter1(i,:)=temp;
    end
end

%interhemispheric  

for i=1:length(files)
    load([filedir files(i).name]);

    FA=FA([Odd Even],:);
    FA=FA(:,[Odd Even]);
    FA=FA(1:45,46:90);
    parameter1(i,1)=GlobalStrength(FA);
    parameter1(i,2)=Density(FA);
%     parameter1(i,3)=GlobalClusterCoefficient(FA);
%     parameter1(i,4)=GlobalCPathLength(FA);
%     
%     parameter1(i,5)=GlobalEfficiency(FA);
%     
%     parameter1(i,6)=LocalEfficiency(FA);    
end
    
