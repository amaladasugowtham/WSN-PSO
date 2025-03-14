% Define the names and corresponding data for each bar graph
names = {'Chen et al', 'Rajput and Kum', 'Fuzzy LEACH', 'Proposed'};

% Define the data for each bar graph (FND, HND, DEAD for each group)
data = [
    2000, 2500, 0;   % Chen et al
    2200, 2600, 0;   % Rajput and Kum
    1800, 2400, 0;   % Fuzzy LEACH
    1900, 2300, 0    % Proposed
];

% Define colors for each category (FND, HND, DEAD)
colors = {[0 0.447 0.741], [0.929 0.694 0.125], [0.466 0.674 0.188]};

% Define y-axis labels
y_labels = {'0', '2500', '5000', '7500', '10000'};

% Create a new figure for the bar graphs
figure;

% Plotting each bar graph
for i = 1:numel(names)
    subplot(1, numel(names), i);
    bar(data(i,:), 'stacked', 'FaceColor', cell2mat(colors));
    title(names{i});
    set(gca, 'xticklabel', {'FND', 'HND', 'DEAD'});
    ylabel('Number of rounds');
    ylim([0 10000]);
    
    % Add text labels on top of DEAD bars
    text(1:3, data(i,3), num2str(data(i,3)), ...
        'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom');
    
    % Customize the y-axis tick labels
    set(gca, 'ytick', [0 2500 5000 7500 10000]);
    set(gca, 'yticklabel', y_labels);
end

% Add legend outside the subplots
legend({'FND', 'HND', 'DEAD'}, 'Orientation', 'horizontal', ...
    'Position', [0.5, 0.02, 0.05, 0.05], 'EdgeColor', 'none');

% Adjust the figure size
set(gcf, 'Position', [100, 100, 1200, 400]);
