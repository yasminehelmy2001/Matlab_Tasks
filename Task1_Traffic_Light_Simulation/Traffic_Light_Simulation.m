% Define colors
redColor = [1, 0, 0];
yellowColor = [1, 1, 0];
greenColor = [0, 1, 0];
blackColor = [0, 0, 0];
grayColor = [0.7, 0.7, 0.7];

% Define the dark colors for off state
darkRedColor = [0.5, 0, 0];
darkYellowColor = [0.5, 0.5, 0];
darkGreenColor = [0, 0.5, 0];

% Define the radius of the circles
radius = 3;

% Draw black & grey rectangles
rectangle('Position', [-5, -20, 10, 25], 'FaceColor', blackColor, 'Curvature',[0.05 0.05]);
rectangle('Position', [-1, -30, 2, 10], 'FaceColor', grayColor);
hold on;

% Set angle for all circles
theta = linspace(0, 360, 360);

% Create coordinates for the red circle
xRed = radius * cosd(theta);
yRed = radius * sind(theta);

% Fill circle with dark red
fill(xRed, yRed, darkRedColor);
hold on;

% Create coordinates for the yellow circle
xYellow = radius * cosd(theta);
yYellow = radius * sind(theta) - 8;

% Fill circle with dark yellow
fill(xYellow, yYellow, darkYellowColor);
hold on;

% Create coordinates for the green circle
xGreen = radius * cosd(theta);
yGreen = radius * sind(theta) - 16;

% Fill circle with dark green
fill(xGreen, yGreen, darkGreenColor);

% X axis = y axis
axis equal;
% Set x and y axis
axis([-20 20 -40 20]);
% Figure title
title("Traffic Light Simulation");
% Set grid on
grid on;

% Loop for the traffic light sequence
while true
    % Red on for 5 seconds
    fill(xRed, yRed, redColor);
    pause(5);
    hold on;

    % Red off, yellow on for 3 seconds
    fill(xRed, yRed, darkRedColor);
    fill(xYellow, yYellow, yellowColor);
    pause(3);
    hold on;

    % Yellow off, green on for 5 seconds
    fill(xYellow, yYellow, darkYellowColor);
    fill(xGreen, yGreen, greenColor);
    pause(5);
    hold on;

    % Green off, repeat the sequence
    fill(xGreen, yGreen, darkGreenColor);
end
