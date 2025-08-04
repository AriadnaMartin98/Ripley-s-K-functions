clc; clear all; 
keyboard

%% Run function example
%--Example for storm surge events. 

%---1) Import de-clustered events and information 
load("Example_argentia-835-can-meds.mat"); 

%--- 2) Test inputs
data = dataset.Events{1}; % Events
time = dataset.time{1}; % Complete time series
no_data = dataset.no_data{1}; % If time is incomplete, otherwise no_data = [];
T  = 9; % Window definition (days)
n = 1000; % number of bootstrap iterations
p = 0.98; % significant threshold (in percentile)

%--- 3) Run test
[I P] = K_function(data,time,no_data,T,n,p);


