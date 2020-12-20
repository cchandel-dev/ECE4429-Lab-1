%a) Define a sampling frequency.
%fs=8000;
% Create the independent variable T to represent time.
% T is an array with a range of 0 to 3 seconds. The resolution
% of T is the period of the signal fs.
%T=0:1/fs:3;
% Create a sampled signal.
%y = 0.5*sin(5000*pi*T);
%plot(y);
%sound(y);

%b) Define a sampling frequency.
fs=3000;
% Create the independent variable T to represent time.
% T is an array with a range of 0 to 3 seconds. The resolution
% of T is the period of the signal fs.
T=0:1/fs:3;
% Create a sampled signal.
x = 0.5*sin(5000*pi*T);
plot(x);
sound(x);
