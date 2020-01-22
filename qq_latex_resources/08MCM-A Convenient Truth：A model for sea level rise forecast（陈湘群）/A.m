% mathematical model simulation

%constants
greenland_init_temp = -12.2; %deg C, climate-charts.com for Danmar-
kshavn
h = 1498; % initial average height of the ice sheet, m
Tl = -30; % temperature of the bottom of the ice sheet
p_ice = 920; %kg/m^3
month2sec = 2592000; %seconds in a month
accu_rate = 0.025; %accumulation rate, m/month
flomin = 0.21; %minimum historical rate of SLR in Florida
flomax = 0.24; %maximum historical rate of SLR in Florida
floavg = 0.22; %average historical rate of SLR in Florida

%import data from files

%temperature models from EdGCM

TMhigh = importdata('HighTemp.txt'); 
TMhigh = TMhigh.data; TMhigh =TMhigh(:, 2);
TMmed = importdata('MedTemp.txt'); 
TMmed = TMmed.data; TMmed = TMmed(:,2);
TMlow = importdata('LowTemp.txt'); 
TMlow = TMlow(:, 2);

TMhigh = 2.2*(TMhigh-min(TMhigh))+greenland_init_temp;
TMmed = 2.2*(TMmed-min(TMmed))+greenland_init_temp;
TMlow = 2.2*(TMlow-min(TMlow))+greenland_init_temp;

%sinusoidal 'monthly' temp

TMHmonth = [];
for yearavg = TMhigh'
    seasonmat = 1:12;
    monthtemps = -15.*cos(pi.*seasonmat./6)+yearavg;
    TMHmonth = [TMHmonth monthtemps];
end

TMMmonth = [];
for yearavg = TMmed'
    seasonmat = 1:12;
    monthtemps = -15.*cos(pi.*seasonmat./6)+yearavg;
    TMMmonth = [TMMmonth monthtemps];
end

TMLmonth = [];
for yearavg = TMlow'
    seasonmat = 1:12;
    monthtemps = -15.*cos(pi.*seasonmat./6)+yearavg;
    TMLmonth = [TMLmonth monthtemps];
end

h1 = h;
timecourseH = h1;
ycount = 0; %keeps track of years
ann_tempchg = 0; %annual global temperature change
mcount = 0; %keeping track of how many month passes

SLR1 = 0; %net sea level rise
SLRtot1 = zeros(51,1);
for Ta = TMHmonth
    mcount = mcount+1;
    if mcount == 1
       ann_tempchg = ann_tempchg - Ta; 
       %record the temperature of the first month
       inih = h1; %record the height of the first month
    end
    S = h1-(6.112e-2/p_ice)*month2sec*exp((18.678-Ta/234.5)*
    Ta/(257.14+Ta))*(0.0003448/(Ta+273.15))^(0.5); 
    % height after sublimation
    %S =
    %h1-(0.01/p_ice)*month2sec*exp(0.55-5724/(Ta+273.15)+3.53*
    log(Ta)-0.00728*Ta)*(0.0003448/(Ta+273.15))^(0.5); 
    % height after sublimation
    x_val = fzero(@(Chi)U(Tl,Ta,month2sec,S,Chi), S/2);
    if x_val > S
       x_val = S;
    end
    if x_val < 0
       error('X is less than 0');
    end
    timecourseH = [timecourseH x_val];
    h1 = x_val + accu_rate;
    if mcount == 13
       ann_tempchg = ann_tempchg + Ta; %temp change recording
       mcount = 0;
       SLR1 = SLR1 + (6.89*ann_tempchg); 
       %thermal expansion effect in centimeters
       ycount = ycount + 1;
       SLR1 = SLR1 + (inih-h1)*700/h; 
       %melting effect in centimeters
       SLRtot1(ycount,1) = SLR1-(unifrnd(flomin,flomax)*(ycount))
       +(floavg*ycount); %record the rise(local)
       ann_tempchg = 0;
    end
end

h2 = h;
timecourseM = h2;
ycount = 0; %keeps track of years
ann_tempchg = 0; %annual global temperature change

mcount = 0; %keeping track of how many month passes
SLR2 = 0; %net sea level rise
SLRtot2 = zeros(51,1);
Scourse = [];

for Ta = TMMmonth
    mcount = mcount+1;
    if mcount == 1
       ann_tempchg = ann_tempchg - Ta; 
       %record the temperature of the first month
       inih = h2; %record the height of the first month
    end
    S = h2-(6.112e-2/p_ice)*month2sec*exp((18.678-Ta/234.5)
    *Ta/(257.14+Ta))*(0.0003448/(Ta+273.15))^(0.5); 
    % height after sublimation
    %S =
    %h1-(0.01/p_ice)*month2sec*exp(0.55-5724/(Ta+273.15)+3.53
    *log(Ta)-0.00728*Ta)*(0.0003448/(Ta+273.15))^(0.5);
    % height after sublimation
    x_val = fzero(@(Chi)U(Tl,Ta,month2sec,S,Chi), S/2);
    if x_val > S
       x_val = S;
    end
    if x_val < 0
       error('X is less than 0');
    end
    timecourseM = [timecourseM x_val];
    h2 = x_val + accu_rate;
    if mcount == 13
       ann_tempchg = ann_tempchg + Ta; %temp change recording
       mcount = 0;
       SLR2 = SLR2 + (6.89*ann_tempchg); 
       %thermal expansion effect incentimeters
       ycount = ycount + 1;
       SLR2 = SLR2 + (inih-h2)*700/h; 
       %melting effect in centimeters
       SLRtot2(ycount,1) = SLR2-(unifrnd(flomin,flomax)
       *(ycount))+(floavg*ycount); %record the rise(local);
       %record the rise
       ann_tempchg = 0;
    end
end

h3 = h;
timecourseL = h3;
ycount = 0; %keeps track of years
ann_tempchg = 0; %annual global temperature change

mcount = 0; %keeping track of how many month passes
SLR3 = 0; %net sea level rise
SLRtot3 = zeros(51,1);
Scourse = [];

for Ta = TMLmonth
    mcount = mcount+1;
    if mcount == 1
       ann_tempchg = ann_tempchg - Ta; 
       %record the temperature of the first month
       inih = h3; %record the height of the first month
    end
    S = h3-(6.112e-2/p_ice)*month2sec*exp((18.678-Ta/234.5)*
    Ta/(257.14+Ta))*(0.0003448/(Ta+273.15))^(0.5); 
    % height after sublimation
    %S =
    %h1-(0.01/p_ice)*month2sec*exp(0.55-5724/(Ta+273.15)+
    3.53*log(Ta)-0.00728*Ta)*(0.0003448/(Ta+273.15))^(0.5); 
    % height after sublimation
    x_val = fzero(@(Chi)U(Tl,Ta,month2sec,S,Chi), S/2);
    if x_val > S
       x_val = S;
    end
    if x_val < 0
       error('X is less than 0');
    end
    timecourseL = [timecourseL x_val];
    h3 = x_val + accu_rate;
    if mcount == 13
       ann_tempchg = ann_tempchg + Ta;
       %temp change recording
       mcount = 0;
       SLR3 = SLR3 + (6.89*ann_tempchg);
       %thermal expansion effect in centimeters
       ycount = ycount + 1;
       SLR3 = SLR3 + (inih-h3)*700/h; 
       %melting effect in centimeters
       SLRtot3(ycount,1) = SLR3-(unifrnd(flomin,flomax)
       *(ycount))+(floavg*ycount); %record the rise(local);
       %record the rise
       ann_tempchg = 0;
    end
end

function out = U(Tl, Ta, t, S, x)
%heat equation
n = 1:100;
Us = Tl+1e-2*(Ta-Tl)*x/S;
V = (Tl+Ta)/2+sum(2.*(Ta-Tl).*((-1).^n-1).*exp(-n.^2.*pi^2.*
t./S.^2).*cos(n.*pi.*x./S)/(n.*pi).^2);
out = Us+V;
