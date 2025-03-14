% Define the names and corresponding data for each category
names = {'Chen et al', 'Rajput and Kum', 'Fuzzy LEACH', 'Proposed'};
categories = {'FND', 'HND', 'DEAD'};
data = [
    % For 'Chen et al'
    2000, 3000, 4000; % FND
    2500, 3500, 4500; % HND
    0, 0, 900;       % DEAD
    % For 'Rajput and Kum'
    2200, 3200, 4200; % FND
    2600, 3600, 4600; % HND
    0, 0, 900;       % DEAD
    % For 'Fuzzy LEACH'
    1800, 2800, 3800; % FND
    2400, 3400, 4400; % HND
    0, 0, 900;       % DEAD
    % For 'Proposed'
    1900, 2900, 3900; % FND
    2300, 3300, 4300; % HND
    0, 0, 900;       % DEAD
];

% Define colors for each category
colors = {[0 0.447 0.741], [0.929 0.694 0.125], [0.466 0.674 0.188]};

% Create a new figure for the bar graph
figure;

% Plotting the bar graph for each group
for i = 1:numel(names)
    subplot(1, numel(names), i);
    bar(data(:, (i-1)*3+1:i*3)', 'stacked');
    title(names{i});
    set(gca, 'xticklabel', categories);
    ylabel('Number of rounds');
    ylim([0 10000]);
    colormap(colors); % Apply custom colors
    
    % Add text labels on top of yellow bars (DEAD category)
    for j = 1:3
        if j == 3 % Only add label on top of yellow bars
            text(j, data(3, (i-1)*3+j), num2str(data(3, (i-1)*3+j)), ...
                'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom');
        end
    end
    
    % Customize the y-axis tick labels
    set(gca, 'ytick', [0 2500 5000 7500 10000]);
    set(gca, 'yticklabel', {'0', '2500', '5000', '7500', '10000'});
end

% Add legend outside the subplots
legend(categories, 'Orientation', 'horizontal', ...
    'Position', [0.5, 0.02, 0.05, 0.05], 'EdgeColor', 'none');

% Adjust the figure size
set(gcf, 'Position', [100, 100, 1200, 400]);
