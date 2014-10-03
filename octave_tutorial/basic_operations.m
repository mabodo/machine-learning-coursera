%%% this is a comment

%%%simple operations

2+2 % add
2-2 % dif
2*2 % mult
2/2 % div
2^2 % power
2==2 % equals
2~=1 % diferent
1 & 1 % and
1 | 1 % or

% matrixes (or not) operations

log(A)
abs(A)
exp(A) 
A*A % matrix multiplication
A.*A % element wise multiplication
A' % transpose
A + 1 % scalars and matrixes fit well.
[val, idx] = max(a) % value and iindex of th maxim
max(a) % just the value of the index
max(A,B) % element wise max of two elements
max(A) % max in each colum
max(A,[],2) % columns wise max... for each row
max(max(A)) % total max
sum(A) % sum of columsn
sum(A,2) %sum of rows
[rows, cols] = find(magic(3)>=7) % find finds values with a conditions and returns its cols and rows


%%% create matrixs

A = [1 2 ; 3 4 ; 5 6] % matrix 3x2
V = [1 2 3] % 1 by e matrix
v = [1;2;3] % 3 by 1 vector
v = 1:0.1:2 % [1 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2]
A = ones(2,3) % ones matrix 2*3
A = zeros(1,3) % ones matrix 1*3
A = rand(3,3) % random numbe rin matrix 3*3 in the range (0,1)
A = randn(3,3) % random numbe rin matrix 3*3 in the a guassian deistrubtion with mean=0 std = 1
I = eye(3) % indetity matrix

size(A) % size of the matrix
length(A) % size of the longest dimension

%%% matrixes indexing

A(2,3) % selects/asigns element in position 2,3
A(2,:) % selects/asigns everythin in second row
A(:,2) % selects/asigns everythin in second column
A(:,[2 3]) % selects/asigns everythin in second and third column
A(:,2:10) % selects/asigns all the columsn in the range 2, 10

C = [A B] % put one next to the other
C = [A;B] % put one over the other
A(:) % flattens the array


%%%plots

plot(x,y)
plot(x,y,c)  % c is the color
xlabel()
ylabel()
legend(name, ...)
title(title)
aixs([xmin, xmax, ymin, ymax]) % change the axis.
hold on; % makes octave put new figures over
print -dpng 'myplot.png' % saves the figure on the current directory
clf; %clean the figure
close; %makes the figure disapear.
figure(n); % selects a figure.
subplot(rows,cols,selected); %subdivide the plot in subelements and selects a certain one.
hist(randn(1,1000)) % this is histogram
hist(randn(1,1000),100) % second value is bins
imagesc(a) % matrix to image.
colorbar % shows the colorbar

%%% other
sprintf('%0.2f' , pi) % formats a float
disp('ha') % dispays
help % shows help
pwd % current path where we are
cd % change directory
ls % list the directories
load % loads a .dat file
save [file] [variable] % saves a variable in file as .mat
save [file] [variable] -ascii % makes it readable
who % shows variables in the current scope
whos % shows variables in the current scope with more extra information
clear % makes a variable to disappear (if paramter), without i makes all to disapear
addpath % adds a search path to look for a function.
a=1, b=1 % put comands in a simble line



%controls statements
for i=1:10,
	i
end;

i=0
while i<=5,
	i = i+1
	%break works here.
end;

if condition,
	disp('if')
elseif condition,
	dist('elseif'),
else
	disp('else')
end;
		
%functions 
% functions are in a independent file
% the file must be in a visible directory

function y = squarThisNumber(x)
y = x^2

function [y1,y2] = squareAndCubeThisNumbeR(x)
y1 = x^2
y2 = x^3