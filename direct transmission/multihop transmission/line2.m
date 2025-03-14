% Define your data points
x1 = [0, 2500, 4500, 7000,10000];
y1 = [1000, 900, 500, 200, 170];

x2 = [0, 1800, 2000, 2500];
y2 = [1000, 880, 50,0];

x3 = [0, 2000, 2300, 3000,6800];
y3 = [1000, 780,  560, 250, 0];

x4 =[0, 1300, 1500, 1650,1800];
y4 = [1000, 900, 700, 350, 0];

% Plot the lines
figure; % Create a new figure window
plot(x1, y1, 'LineWidth', 2); % Plot line 1
hold on; % Hold the plot to overlay other lines
plot(x2, y2, 'LineWidth', 2); % Plot line 2
plot(x3, y3, 'LineWidth', 2); % Plot line 3
plot(x4, y4, 'LineWidth', 2); % Plot line 4

% Customize the plot
title('Number of alive nodes related to rounds of network');
xlabel('Number of rounds');
ylabel('Number of alive nodes');
legend('Proposed', 'LEACH-FC', 'Rajput and Kum', 'Chen et al'); % Add legend
grid on; % Display grid

% Optionally, save the plot as an image file
% saveas(gcf, 'line_graph.png'); % Save the plot as an image file
