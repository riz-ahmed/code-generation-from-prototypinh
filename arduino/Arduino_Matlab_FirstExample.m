% Matlab example script (the first one) that will be compiled, loaded and
% executed on Arduinno using Matlab Hardware Support Packages for Arduino
clear all
clc
close all

% user settings
ledPin = 'D13';                    % connected to pin 13
delta_Blink = 0.5;              % 500 ms

% Matlab H/W support packages initilisation object for communication with
% Arduino
port = '/dev/tty.usbmodem142201';
board = 'uno';

    % initialise arduino object
    a = arduino(port, board);
    
    % loop of arduino
    for k = 1:10
        a.writeDigitalPin(ledPin, 0);   % off
        pause(delta_Blink/2);
        
        a.writeDigitalPin(ledPin, 1);   % on
        pause(delta_Blink);
    end