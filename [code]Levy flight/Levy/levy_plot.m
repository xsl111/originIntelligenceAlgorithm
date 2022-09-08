% Plot levy steps 

% Coded by Hemanth Manjunatha on 21 Feb 2019

n = 1;
m = 3; 

[x,y,z] = deal(zeros(n,3));

d = levy(n,m,1.4); % generate the steps 
d
for i = 2:length(d) % use those steps 
    x(i)= x(i-1)+d(i,1);
    y(i)= y(i-1)+d(i,2);
    z(i)= z(i-1)+d(i,3);
end

% plot
line(x,y,z)
    
