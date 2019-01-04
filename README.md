## Introduction

This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>. We are using the "Individual household
electric power consumption Data Set". The last section in this doc gives
more details about the data.

## Description of Assignment
The assignment requires us to write scripts to load the data and make four different plots. Each plot has its own script file. 
Considering that the data file is large, not requiring to load the
data in each script would have been more efficient, but this works.

For the full data set, we pick only the data for the dates of 
Feb 1 and Feb 2 of 2007.

The four script files here (`plot1.R`, `plot2.R`, `plot3.R`, and `plot4.R`) correspond to the script used 
to create each of the four plots. Basic explanation of the code is in the scripts. The
scripts are very simple as all they do is read the data generate the plots using
apporpriate columns and parameters.

The four output files (`plot1.png`, `plot2.png`, `plot3.png`, and `plot4.png`) have also been uploaded to this repository.

## Running the script
All you have to do is to download the data file into your working directory and execute the following
```
source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")
```

The four png will files will be created in your working directory.

## Data Description
The data necessary for this assignment has been made available to us here:
* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.


The following descriptions of the 9 variables in the dataset are taken
from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>
