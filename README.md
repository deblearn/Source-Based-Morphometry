# Source-Based-Morphometry
Step 1:

-- Run batch_gigica_run_test_site1.m

Note 1: As each site is running Group ICA individually, so we need to give the path of Group ICA. The group ICA folder is located in (/trdapps/linux-x86_64/matlab/toolboxes/GroupICATv4.0b/icatb) in Trend server. Otherwise, we can download this from (https://trendscenter.org/software/).

Note 2. In line 3 and 4,..path is the path location of file batch_gigica_parameters_test_site1.m

Step 2:

-- batch_gigica_parameters_test_site1.m function will be called internally from function batch_gigica_run_test_site1.m

Note 1: In batch_gigica_parameters_test_site1.m function, In line 41, provide the path to save the GROUP ICA output

Note 2: In line 57, we have to provide the file path of mask file

Note 3: In line 83, we have to provide the file path of reference file

Note 4: smri_paths_test_site1.m function will be called from line 37. In smri_paths_test_site1.m, subject_directory.mat file will be loaded.
In subject_directory.mat file, the data locations are saved like following:

{'..path/extracted_sMRI/1001523_20252_2_0/T1/Sm10mwc1pT1.nii.nii'}

{'..path/extracted_sMRI/1001846_20252_2_0/T1/Sm10mwc1pT1.nii.nii'}

{'..path/extracted_sMRI/1002270_20252_2_0/T1/Sm10mwc1pT1.nii.nii'}

{'..path/extracted_sMRI/1002561_20252_2_0/T1/Sm10mwc1pT1.nii.nii'}

Here ..path/extracted_sMRI/1001523_20252_2_0/T1 represent the data path of a specific subject.

Step 3: 

-- After finishing the simulation, groupICA result will be stored in the output directory

-- After finishing all site's simulations, the mixing matrix from each site will be concatenated to master node. Then source matrix from each site
will be aggregated to the master node.
