function createfigure(X1, Y1, Y2, Y3)
    % Create figure
    figure1 = figure;

    % Create subplot 1
    subplot1 = subplot(1, 3, 1, 'Parent', figure1);
    plot(X1, Y1, 'LineWidth', 2, 'Color', [0, 1, 0]);
    xlabel('Round', 'FontWeight', 'bold', 'FontSize', 11);
    ylabel('Sum of Energy', 'FontWeight', 'bold', 'FontSize', 11);
    title('Sum of Energy of Nodes vs. Round', 'FontWeight', 'bold', 'FontSize', 12);

    % Create subplot 2
    subplot2 = subplot(1, 3, 2, 'Parent', figure1);
    plot(X1, Y2, 'LineWidth', 2);
    xlabel('Round', 'FontWeight', 'bold', 'FontSize', 11);
    ylabel('# of Packets Sent to BS Nodes', 'FontWeight', 'bold', 'FontSize', 11);
    title('Number of Packets Sent to BS vs. Round', 'FontWeight', 'bold', 'FontSize', 12);

    % Create subplot 3
    subplot3 = subplot(1, 3, 3, 'Parent', figure1);
    plot(X1, Y3, 'LineWidth', 2, 'Color', [1, 0, 0]);
    xlabel('Round', 'FontWeight', 'bold', 'FontSize', 11);
    ylabel('# of Dead Nodes', 'FontWeight', 'bold', 'FontSize', 11);
    title('Number of Dead Nodes vs. Round', 'FontWeight', 'bold', 'FontSize', 12);

    % Adjust subplot layout
    box(subplot1, 'on');
    box(subplot2, 'on');
    box(subplot3, 'on');
    hold(subplot1, 'all');
    hold(subplot2, 'all');
    hold(subplot3, 'all');

    % Display grid on subplots
    grid(subplot1, 'on');
    grid(subplot2, 'on');
    grid(subplot3, 'on');
end
