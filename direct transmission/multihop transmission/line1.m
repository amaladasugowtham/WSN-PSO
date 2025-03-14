% Define your data points
x1 = [0, 2500, 5500, 7500,10000];
y1 = [500, 300, 150, 50, 25];

x2 = [0, 3000, 4000, 5000];
y2 = [500, 50, 10,0];

x3 = [0, 2000, 4000, 6000,10000];
y3 = [500, 175,  100, 50, 20];

x4 =[0, 1000, 1800, 2000,2500];
y4 = [500, 250, 100, 20, 0];

% Plot the lines
figure; % Create a new figure window
plot(x1, y1, 'LineWidth', 2); % Plot line 1
hold on; % Hold the plot to overlay other lines
plot(x2, y2, 'LineWidth', 2); % Plot line 2
plot(x3, y3, 'LineWidth', 2); % Plot line 3
plot(x4, y4, 'LineWidth', 2); % Plot line 4

% Customize the plot
title('Average remaining energy related to rounds of network');
xlabel('Number of rounds');
ylabel('Average residual energy');
legend('Proposed', 'LEACH-FC', 'Rajput and Kum', 'Chen et al'); % Add legend
grid on; % Display grid

% Optionally, save the plot as an image file
% saveas(gcf, 'line_graph.png'); % Save the plot as an image file
