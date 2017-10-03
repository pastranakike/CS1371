profile_data = 'Adam,23,15,Georgia Tech,selfie,"Professional MATLAB"';
data = strsplit(profile_data,',')
token = data
for k = 1:4
[token, rem] = strtok(data);
token
end