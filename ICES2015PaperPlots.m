%% Plot Generation Code for ICES2015 HabNet Paper

%% Comparison plot of water usage

clear all
clc

load nominalTrends
load WPAfailedTrends
load UPAfailedTrends
load CRAfailedTrends

% Plot with x-axis being measured in days - current data is in hours

% Comparative water tank trend plot
t1 = (1:length(nominalpotableH2Olevel))/24;
t2 = (1:length(WPAfailedH2Olevel))/24;
t3 = (1:length(UPAfailedH2Olevel))/24;
t4 = (1:length(CRAfailedH2Olevel))/24;

% Generate plot
figure, 
plot(t1,nominalpotableH2Olevel,t2,WPAfailedH2Olevel,...
    t3,UPAfailedH2Olevel,t4,CRAfailedH2Olevel,...
    'LineWidth',2)
title('Comparison of Potable Water Consumption')
xlabel('Mission Elapsed Time (days)')
ylabel('Potable Water Level (L)')
grid on
legend('Nominal Condition','WPA Failure','UPA Failure','CRA Failure')

%% Comparison plot of O2 usage

clear all
clc

load nominalTrends
load CCAAfailedTrends
load OGAfailedTrends

% Define time vectors
t1 = (1:length(nominalO2level))/24;
t2 = (1:length(CCAAfailedO2level))/24;
t3 = (1:length(OGAfailedO2level))/24;

% Generate Plot
figure,
plot(t1,nominalO2level,t2,CCAAfailedO2level,...
    t3,OGAfailedO2level,'LineWidth',2)
title('Comparison of O2 Consumption')
xlabel('Mission Elapsed Time (days)')
ylabel('O2 Tank Level (moles)')
grid on,
legend('Nominal Condition','CCAA Failure','OGA Failure')

%% Comparison plot of N2 usage

clear all
clc

load nominalTrends
load CCAAfailedTrends

% Define time vectors
t1 = (1:length(nominalN2level))/24;
t2 = (1:length(CCAAfailedN2level))/24;

% Generate Plot
figure,
plot(t1,nominalN2level,t2,CCAAfailedN2level,...
    'LineWidth',2)
title('Comparison of N2 Consumption')
xlabel('Mission Elapsed Time (days)')
ylabel('N2 Tank Level (moles)')
grid on,
legend('Nominal Condition','CCAA Failure')

%% Plot of Failed CCAA Atmospheric Trends

clear all
clc

load PCMCCAAfailedAtm

% Define time vectors - convert x axis from hours to days
t1 = (1:length(LabPressure))/24;
t2 = (1:length(labPPO2))/24;

% Generate Plot
figure,
subplot(2,1,1),plot(t1,LabPressure,'LineWidth',2), grid on,
title('Lab Total Pressure with CCAA Failure')
xlabel('Mission Elapsed Time (days)')
ylabel('Total Pressure (kPa)')
hold on, line([1, 700],(55+1.4)*ones(1,2),'LineWidth',2,'Color','r','LineStyle','--')
subplot(2,1,2),plot(t2,labPPO2,'LineWidth',2), grid on
hold on, line([1, 700],15.168*ones(1,2),'LineWidth',2,'Color','r','LineStyle','--')
title('Lab O2 Partial Pressure with CCAA Failure')
xlabel('Mission Elapsed Time (days)')
ylabel('O2 Partial Pressure (kPa)')

% Total Pressure
figure,
plot(t1,LabPressure,'LineWidth',2), grid on,
title('Lab Total Pressure with CCAA Failure')
xlabel('Mission Elapsed Time (days)')
ylabel('Total Pressure (kPa)')
hold on, line([1, 700],(55+1.4)*ones(1,2),'LineWidth',2,'Color','r','LineStyle','--')

% O2 Partial Pressure
figure,
plot(t2,labPPO2,'LineWidth',2), grid on
hold on, line([1, 700],15.168*ones(1,2),'LineWidth',2,'Color','r','LineStyle','--')
title('Lab O2 Partial Pressure with CCAA Failure')
xlabel('Mission Elapsed Time (days)')
ylabel('O2 Partial Pressure (kPa)')




