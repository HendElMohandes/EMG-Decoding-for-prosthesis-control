
% ---------------------------
% Plot for the ninapro subject-dependent test across session grouping tests
% ---------------------------

% Sample placeholder data (22 DOFs x  Models)
% Replace these with your actual data
subjectdata = [...
    0.503875  0.5995   0.59     0.527925  0.645325  0.62     0.532625  0.6602   0.62;
    0.2625    0.323775 0.33     0.28865   0.38315   0.37     0.3004    0.393725 0.37;
    0.249825  0.3571   0.34     0.269425  0.4414    0.37     0.275175  0.40155  0.41;
    0.481725  0.595725 0.59     0.4873    0.643525  0.62     0.50425   0.6626   0.63;
    0.636175  0.7271   0.73     0.648875  0.7649    0.75     0.681525  0.779925 0.76;
    0.59225   0.69115  0.7      0.608725  0.747625  0.73     0.644125  0.761175 0.73;
    0.44455   0.545225 0.55     0.4542    0.583475  0.58     0.4746    0.59505  0.58;
    0.64475   0.750175 0.75     0.653075  0.7902    0.77     0.68375   0.780225 0.78;
    0.6591    0.76335  0.76     0.666025  0.805025  0.78     0.705675  0.818625 0.81;
    0.5242    0.597925 0.6      0.525275  0.641075  0.61     0.530025  0.63805  0.63;
    0.57515   0.6834   0.67     0.55455   0.699575  0.71     0.615275  0.742875 0.7;
    0.63555   0.75115  0.75     0.63235   0.789275  0.78     0.67585   0.78045  0.78;
    0.692025  0.801725 0.81     0.694375  0.8452    0.83     0.756775  0.864825 0.83;
    0.4832    0.616525 0.61     0.4852    0.64845   0.64     0.524375  0.66945  0.64;
    0.4638    0.58975  0.57     0.448525  0.629125  0.59     0.5205    0.642525 0.64;
    0.63515   0.7366   0.74     0.622125  0.779075  0.76     0.672575  0.774475 0.77;
    0.69045   0.793675 0.81     0.697425  0.8405    0.83     0.754575  0.8639   0.83;
    0.531225  0.6356   0.64     0.518575  0.68005   0.65     0.558675  0.697875 0.68;
    0.422325  0.523975 0.5      0.40065   0.542425  0.53     0.44035   0.57255  0.53;
    0.41425   0.50955  0.49     0.43205   0.569175  0.56     0.45415   0.570225 0.51;
    0.409525  0.4401   0.48     0.420925  0.51025   0.46     0.43505   0.483775 0.47;
    0.43745   0.470225 0.46     0.431125  0.49055   0.46     0.43985   0.47195  0.46];

 
subjectstd = [...
    0.1619960727  0.159423481  0.18    0.1549629215  0.13549688  0.13    0.151015144   0.138188871  0.2;
    0.1512201655  0.185156689  0.17    0.1387651678  0.147962842 0.16    0.151290822   0.177248773  0.19;
    0.1534358444  0.162762498  0.18    0.1567432798  0.165641225 0.16    0.1592781614  0.168111829  0.19;
    0.147102439   0.148906783  0.17    0.1432835095  0.131563378 0.12    0.1450797747  0.118911042  0.16;
    0.1045794723  0.095560372  0.1     0.1027157361  0.08453153  0.09    0.09656882427 0.068804214  0.09;
    0.1299314908  0.145286552  0.17    0.1527780336  0.133552964 0.15    0.1275599784  0.136558786  0.15;
    0.1299455409  0.146983426  0.17    0.1447225817  0.174390806 0.2     0.1433136778  0.178744618  0.18;
    0.1097315489  0.087483592  0.1     0.1002014349  0.070120848 0.09    0.09658309827 0.083859922  0.09;
    0.1162388787  0.109803449  0.15    0.1253418889  0.10303335  0.15    0.09038560911 0.089616759  0.13;
    0.1612230816  0.144331418  0.15    0.1583713564  0.139538504 0.16    0.1592012897  0.14209512   0.16;
    0.1391985393  0.140378572  0.13    0.150029903  0.130023644 0.12     0.1227484372  0.115357235  0.15;
    0.1097166397  0.088392931  0.09    0.10011341   0.064168044 0.08     0.1070601437  0.089972346  0.11;
    0.09997858425 0.089382493  0.09    0.1001208725 0.072566221 0.09     0.07366643027 0.072699553  0.10;
    0.129971634  0.135526133  0.14    0.1368804831  0.102400408 0.12     0.1112024459  0.137411594  0.17;
    0.1461883576  0.158194419  0.15    0.1719079938  0.13530463  0.18     0.1453914257  0.129044414  0.14;
    0.1077100929  0.092081848  0.09    0.09737429438 0.072231603 0.09    0.111065905   0.089547864  0.10;
    0.09576251341 0.09299666   0.1     0.1044803717  0.078226823 0.09    0.06974087111 0.066420494  0.11;
    0.1809229171  0.190914238  0.19    0.178629381  0.169007047 0.19     0.187287163   0.17941989   0.20;
    0.1480146194  0.139004609  0.15    0.1584295605  0.134920278 0.14    0.1491389904  0.129478431  0.17;
    0.1137164152  0.131632345  0.16    0.1262926902  0.116268233 0.12    0.1186292544  0.121308356  0.16;
    0.1291691373  0.138796254  0.15    0.1233376411  0.146106345 0.16    0.1222997474  0.121367737  0.16;
    0.1509547309  0.153249836  0.16    0.1506197773  0.190709062 0.19    0.1476300904  0.183199618  0.21];

% Subject (DOF) labels
subjectnames = {'1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22'};

%% ---------------------------
% Split data into two halves: DOF 1–11 and DOF 12–22
% ---------------------------

% Indices for split
idx1 = 1:11;
idx2 = 12:22;

% First half
data1 = subjectdata(idx1, :);
std1 = subjectstd(idx1, :);
names1 = subjectnames(idx1);

% Second half
data2 = subjectdata(idx2, :);
std2 = subjectstd(idx2, :);
names2 = subjectnames(idx2);

% ---------------------------
% Plot 1: DOF 1–11
% ---------------------------
figure;
b1 = bar(data1, 'grouped');
hold on
[ngroups, nbars] = size(data1);
groupwidth = min(0.8, nbars/(nbars + 1.5));
for i = 1:nbars
    x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
    errorbar(x, data1(:,i), std1(:,i), 'k', 'linestyle', 'none', 'LineWidth', 0.8);
end
yline(0.6, 'r--', 'LineWidth', 2)
set(gca, 'xtick', 1:ngroups, 'xticklabel', names1)
xlabel('DOF');
ylabel('Average CC');
title('Decoding Performance Across 22 DOFs Using LSTM model for E1');
legend({'2 Features-1 TS','2 Features-15 TS', '2 Features-25 TS', '5 Features-1 TS','5 Features-15 TS', '5 Features-25 TS', '8 Features-1 TS','8 Features-15 TS', '8 Features-25 TS'}, ...
       'Location', 'northeastoutside');
hold off

% ---------------------------
% Plot 2: DOF 12–22
% ---------------------------
figure;
b2 = bar(data2, 'grouped');
hold on
[ngroups, nbars] = size(data2);
groupwidth = min(0.8, nbars/(nbars + 1.5));
for i = 1:nbars
    x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
    errorbar(x, data2(:,i), std2(:,i), 'k', 'linestyle', 'none', 'LineWidth', 0.8);
end
yline(0.6, 'r--', 'LineWidth', 2)
set(gca, 'xtick', 1:ngroups, 'xticklabel', names2)
xlabel('DOF');
ylabel('Average CC');
title('Decoding Performance Across 22 DOFs Using LSTM model for E1');
legend({'2 Features-1 TS','2 Features-15 TS', '2 Features-25 TS', '5 Features-1 TS','5 Features-15 TS', '5 Features-25 TS', '8 Features-1 TS','8 Features-15 TS', '8 Features-25 TS'}, ...
       'Location', 'northeastoutside');
hold off


% %Plot for the ninapro subject dependant test, across session 
% 
% subjectdata = [...
%     0.60  0.64;
%     0.53  0.58;
%     0.50  0.57;
%     0.65  0.70;
%     0.68  0.72;
%     0.72  0.77;
%     0.66  0.69;
%     0.69  0.73;
%     0.75  0.79;
%     0.65  0.70;
%     0.70  0.73;
%     0.68  0.72;
%     0.78  0.82;
%     0.62  0.68;
%     0.64  0.67;
%     0.66  0.71;
%     0.77  0.80;
%     0.73  0.77;
%     0.59  0.61;
%     0.54  0.58;
%     0.56  0.60;
%     0.63  0.68];
% 
% subjectstd = [...
%     0.10  0.12;
%     0.13  0.15;
%     0.20  0.15;
%     0.10  0.11;
%     0.11  0.09;
%     0.11  0.07;
%     0.13  0.12;
%     0.11  0.11;
%     0.10  0.08;
%     0.13  0.13;
%     0.11  0.08;
%     0.11  0.09;
%     0.09  0.08;
%     0.15  0.14;
%     0.11  0.10;
%     0.13  0.11;
%     0.09  0.09;
%     0.12  0.12;
%     0.11  0.12;
%     0.13  0.11;
%     0.17  0.14;
%     0.16  0.13];
% 
% 
% 
% 
% subjectnames = {'1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22'};
% 
% % Create grouped bar chart
% figure;
% b = bar(subjectdata, 'grouped');
% hold on
% 
% % Get the number of groups and bars per group
% [ngroups, nbars] = size(subjectdata);
% % Calculate x-coordinates for error bars
% groupwidth = min(0.8, nbars/(nbars + 1.5));
% for i = 1:nbars
%     x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
%     errorbar(x, subjectdata(:,i), subjectstd(:,i), 'k', 'linestyle', 'none', 'LineWidth', 0.8);
% end
% 
% % Add red dotted horizontal line
% yline(0.6, 'r--', 'LineWidth', 2)
% 
% hold off
% 
% set(gca, 'xtick', 1:ngroups, 'xticklabel', subjectnames)
% xlabel('DOF');
% ylabel('Average CC');
% title('Decoding performance Across 22 DOFs Using CNN-LSTM model For combined sessions');
% legend({'2 Features', '8 Features'}, 'Location', 'NorthWest');
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 

% %plot for ninapro subject dependant test , within session 
% %session for multiple features and multiple TS
% subjectdata = [...
%     0.80  0.79;
%     0.75  0.73;
%     0.69  0.70;
%     0.81  0.79;
%     0.74  0.77;
%     0.71  0.73;
%     0.74  0.75;
%     0.77  0.78;
%     0.79  0.78;
%     0.70  0.70;
%     0.82  0.81;
%     0.79  0.80;
%     0.80  0.80;
%     0.76  0.76;
%     0.75  0.78;
%     0.79  0.80;
%     0.77  0.77;
%     0.73  0.73;
%     0.78  0.78;
%     0.74  0.74;
%     0.76  0.76;
%     0.78  0.77];
% 
% 
% 
% 
% 
% 
% % Corresponding standard deviations
% subjectstd = [...
%     0.07  0.09;
%     0.09  0.10;
%     0.10  0.09;
%     0.09  0.12;
%     0.08  0.10;
%     0.11  0.10;
%     0.10  0.09;
%     0.08  0.08;
%     0.09  0.09;
%     0.12  0.15;
%     0.08  0.08;
%     0.07  0.09;
%     0.09  0.09;
%     0.10  0.12;
%     0.10  0.09;
%     0.09  0.10;
%     0.09  0.09;
%     0.15  0.13;
%     0.08  0.10;
%     0.09  0.10;
%     0.09  0.10;
%     0.13  0.13];
% 
% 
% 
% 
% 
% 
% 
% subjectnames = {'1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22'};
% 
% % Create grouped bar chart
% figure;
% b = bar(subjectdata, 'grouped');
% hold on
% 
% % Get the number of groups and bars per group
% [ngroups, nbars] = size(subjectdata);
% % Calculate x-coordinates for error bars
% groupwidth = min(0.8, nbars/(nbars + 1.5));
% for i = 1:nbars
%     x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
%     errorbar(x, subjectdata(:,i), subjectstd(:,i), 'k', 'linestyle', 'none', 'LineWidth', 0.8);
% end
% 
% % Add red dotted horizontal line
% yline(0.6, 'r--', 'LineWidth', 2)
% 
% hold off
% 
% set(gca, 'xtick', 1:ngroups, 'xticklabel', subjectnames)
% xlabel('DOF');
% ylabel('Average CC');
% title('Decoding performance Across 22 DOFs Using CNN-LSTM model For E2 and 5 Features');
% legend({'15 TS', '25 TS'}, 'Location', 'NorthWest');
