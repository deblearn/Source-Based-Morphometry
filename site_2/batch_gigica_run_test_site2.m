%% run this m file after step 1 is initialized, input should be the step1 files
addpath(genpath('/trdapps/linux-x86_64/matlab/toolboxes/GroupICATv4.0b/icatb'));
icatb_read_batch_file('..path/batch_gigica_parameters_test_site2.m');
icatb_batch_file_run('..path/batch_gigica_parameters_test_site2.m');
