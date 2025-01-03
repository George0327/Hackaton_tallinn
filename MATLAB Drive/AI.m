clc
load MobileSensorData\15mwalk.mat
walkAcceleration = Acceleration;
head(Acceleration);

walkLabel = 'walking';
walkLabel = repmat(walkLabel, size(Acceleration, 1), 1);
Acceleration.Activity = walkLabel

load MobileSensorData\lenka_run.mat
runAcceleration = Acceleration
head(Acceleration);

runlabel = 'running';
runlabel = repmat(runlabel, size(Acceleration, 1), 1);
Acceleration.Activity = runlabel

load MobileSensorData\push-ups.mat
pushAcceleration = Acceleration
head(Acceleration);

pushlabel = 'push_ups';
pushlabel = repmat(pushlabel, size(Acceleration, 1), 1);
Acceleration.Activity = pushlabel

load MobileSensorData\jumping_jacks_te_pup_george.mat
head(Acceleration);
jumpAcceleration = Acceleration

jumplabel = 'jumping-jacks';
jumplabel = repmat(jumplabel, size(Acceleration, 1), 1);
Acceleration.Activity = jumplabel

load MobileSensorData\situps.mat
sitAcceleration = Acceleration
head(Acceleration);

situpslabel = 'situps';
situpslabel = repmat(situpslabel, size(Acceleration, 1), 1);
Acceleration.Activity = situpslabel

walkAcceleration = timetable2table(walkAcceleration, "ConvertRowTimes", false);
runAcceleration = timetable2table(runAcceleration, "ConvertRowTimes", false);
pushAcceleration = timetable2table(pushAcceleration, "ConvertRowTimes", false);
jumpAcceleration = timetable2table(jumpAcceleration, "ConvertRowTimes", false);
sitAcceleration = timetable2table(sitAcceleration, "ConvertRowTimes", false);

allAceleration = [walkAcceleration; runAcceleration; sitAcceleration; pushAcceleration; jumpAcceleration]
