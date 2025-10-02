
function plot_features_and_dof(subject_id)

    close all
    % Define file path
    input_filename = sprintf('C:\\Users\\henda\\OneDrive\\Desktop\\Collection\\PHD Work\\Year 3 progression\\Dataset\\DB2-processed\\S%d_E1.mat', subject_id);

    % Load data
    if isfile(input_filename)
        load(input_filename, 'Data');

        % Parameters
        num_emg_channels = 12;  % EMG Channels
        num_features_per_channel = 8; % Features per channel
        num_dof = 22; % DOF count
        
        % EMG feature names
        feature_labels = {'RMS', 'MAV', 'ZC', 'VAR', 'SSC', 'WL', 'MF', 'MDF'};

        % Extract EMG Features (First 96 columns) and DOF (Last 22 columns)
        EMG_features = Data(:, 1:96);
        DOF_signals = Data(:, 97:118);

        % Plot each EMG channel with all its corresponding features
        for ch = 1:num_emg_channels
            figure;
            tiledlayout(4, 2); % 4 rows, 2 columns layout for features

            for feat = 1:num_features_per_channel
                feature_index = (ch - 1) * num_features_per_channel + feat;
                ax = nexttile;
                plot(EMG_features(:, feature_index), 'LineWidth', 1.2);
                title(sprintf('EMG Ch %d - %s', ch, feature_labels{feat}));
                xlabel('Sample');
                ylabel('Feature Value');
                grid on;
            end

            % Save figure
            saveas(gcf, sprintf('C:\\Users\\henda\\OneDrive\\Desktop\\Collection\\PHD Work\\Year 3 progression\\Dataset\\FeaturePlots\\S%d_EMG%d_Features.png', subject_id, ch));
        end

        % Plot DOF signals in separate figures with multiple subplots
        num_dof_per_figure = 6; % Number of DOF signals per figure
        num_figures = ceil(num_dof / num_dof_per_figure); % Calculate number of figures required

        for fig_idx = 1:num_figures
            figure;
            tiledlayout(num_dof_per_figure, 1); % Arrange DOF plots in vertical layout

            for dof_idx = 1:num_dof_per_figure
                actual_dof = (fig_idx - 1) * num_dof_per_figure + dof_idx;
                if actual_dof > num_dof
                    break; % Stop if exceeding total DOFs
                end
                
                nexttile;
                plot(DOF_signals(:, actual_dof), 'LineWidth', 1.5);
                title(sprintf('DOF %d', actual_dof));
                xlabel('Sample');
                ylabel('DOF Value');
                grid on;
            end

            % Save DOF figure
            saveas(gcf, sprintf('C:\\Users\\henda\\OneDrive\\Desktop\\Collection\\PHD Work\\Year 3 progression\\Dataset\\FeaturePlots\\S%d_DOF_Fig%d.png', subject_id, fig_idx));
        end

        fprintf('Plots generated and saved for Subject %d.\n', subject_id);
    else
        fprintf('File for Subject %d not found. Skipping...\n', subject_id);
    end
end
