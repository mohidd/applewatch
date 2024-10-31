clear all
close all

T = readtable("heartrateDataCleaned.csv");
x = T(:,2);
y = T(:,3);
x = table2array(x);
y = table2array(y);

xNan = isnan(x);
yNan = isnan(y);

xNot = not(xNan);
yNot = not(yNan);

result = (xNot&yNot);

resultx = x(result,:);
resulty = y(result,:);

dataXY = [resultx resulty];






scatter(resultx,resulty);
xlabel("ECG");
ylabel("Apple Watch")
title("ECG V Apple Watch Heart Rates")
disp(dataXY);
