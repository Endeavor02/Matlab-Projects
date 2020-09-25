for year = 2016:+1:2017 %For loop to increase the year from 2016 to 2017
    for month = 01:+1:12 %For loop to increase the month from 1 to 12
    YearStr = int2str(year);
    MonthStr = int2str(month);
        if month < 10   %if loop makes '1' '01' for file name
            MonthStr = ['0',int2str(month)];
        end
    url = ['https://www.ncdc.noaa.gov/orders/qclcd/QCLCD',YearStr,MonthStr,'.zip']; %URL to each day
    filename = ['WeatherData',YearStr,'-',MonthStr,'.zip'];
        if (isfile(filename) == false)
        outfilename = websave(filename,url); %saves the zip file
        end
    end
end
for year = 2016:+1:2017%year loop
    for month = 01:+1:12%month loop
    YearStr = int2str(year);
    MonthStr = int2str(month);
        if month < 10
            MonthStr = ['0',int2str(month)];
        end
    OutFileName = ['WeatherData',YearStr,'-',MonthStr];
    FileName = [OutFileName,'.zip'];
        if (exist(OutFileName,'dir') == false) %if the file doesn't exist, unzip.
        unzip(FileName,OutFileName);
        end
    end
end

clear
clc
j = 1; %Define/declare a bunch of stuff
r=1;
k=1;
x=1;
y=1;
z=1;
TempMatrixGBA = [];
TempMatrixCP = [];
TempMatrixDIA = [];
TempMatrixKWIA = [];
TempMatrixSJ = [];
TempMatrixSFIA = [];
for year = 2016:+1:2017
    for month = 01:+1:12
    YearStr = int2str(year);
    MonthStr = int2str(month);
        if month < 10
            MonthStr = ['0',int2str(month)];
        end
ReadFileName = ['WeatherData',YearStr,'-',MonthStr,'\',YearStr,MonthStr,'daily.txt']; %Sets the filename variable
disp(ReadFileName)%displays the file name in command window
cellData = readtable(ReadFileName, 'HeaderLines',1); %Reads the file
[height,width] = size(cellData); %get size of the file
    for i = 1:+1:height %Process data for every line of the file
wbanID = (cellData{i,1});
day = cellData{i,2};
avgTemp = str2double(cellData{i,7});
    if isnan(avgTemp)%if the temperature value is Not A Number sets the temp to -1
        avgTemp = -1;
    end
    if wbanID == 12960
        TempMatrixGBA(j,1) = avgTemp;
        TempMatrixGBA(j,2) = day;
        j = j+1;
        disp('Got a value');
    end
    if wbanID == 94728
        TempMatrixCP(k,1) = avgTemp;
        TempMatrixCP(k,2) = day;
        k = k+1;
        disp('Got a value');
    end
    if wbanID == 03017
        TempMatrixDIA(r,1) = avgTemp;
        TempMatrixDIA(r,2) = day;
        r = r+1;
        disp('Got a value');
    end
    if wbanID == 12836
        TempMatrixKWIA(y,1) = avgTemp;
        TempMatrixKWIA(y,2) = day;
        y = y+1;
        disp('Got a value');
    end
    if wbanID == 11641
        TempMatrixSJ(x,1) = avgTemp;
        TempMatrixSJ(x,2) = day;
        x = x+1;
        disp('Got a value');
    end
    if wbanID == 23234
        TempMatrixSFIA(z,1) = avgTemp;
        TempMatrixSFIA(z,2) = day;
        z = z+1;
        disp('Got a value');
    end
    end
    end
end
xAxis = 1:1:731; %Sets the X axis as 1-731
%Plot the data
plot(xAxis,TempMatrixGBA(:,1),'r',xAxis,TempMatrixCP(:,1),'g',xAxis,TempMatrixDIA(:,1),'b',xAxis,TempMatrixKWIA(:,1),'y',xAxis,TempMatrixSJ(:,1),'c',xAxis,TempMatrixSFIA(:,1),'m')
legend('George Bush Airport','Central Park','Denver International Airport','Key West International Airport','San Juan','San Francisco International Airport')