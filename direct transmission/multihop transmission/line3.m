% Define your data points
x1 = [0, 1800, 2000, 10000];
y1 = [0, 3.5, 3.8, 3.8];

x2 = [0, 2000, 10000];
y2 = [0, 3.5, 3.5];

x3 = [0, 2000, 5500, 10000];
y3 = [0, 2.5,  3.1, 3.1];

x4 =[0,1800,10000];
y4 = [0,1.75,1.75];

% Plot the lines
figure; % Create a new figure window
plot(x1, y1, 'LineWidth', 2); % Plot line 1
hold on; % Hold the plot to overlay other lines
plot(x2, y2, 'LineWidth', 2); % Plot line 2
plot(x3, y3, 'LineWidth', 2); % Plot line 3
plot(x4, y4, 'LineWidth', 2); % Plot line 4

% Customize the plot
title('Throughput related to rounds of network');
xlabel('Number of rounds');
ylabel('Number of packets(x 10^4)');
legend('Proposed', 'LEACH-FC', 'Rajput and Kum', 'Chen et al'); % Add legend
grid on; % Display grid

% Optionally, save the plot as an image file
% saveas(gcf, 'line_graph.png'); % Save the plot as an image file
