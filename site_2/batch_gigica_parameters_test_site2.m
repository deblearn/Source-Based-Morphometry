% Enter the values for the variables required for the ICA analysis.
% Variables are on the left and the values are on the right.
% Characters must be enterd in single quotes

%% Modality
modalityType = 'smri';

%% Type of analysis
% Options are 1 and 2.
% 1 - Regular Group ICA
% 2 - Group ICA using icasso
which_analysis = 2;

%% ICASSO options.
% This variable will be used only when which_analysis variable is set to 2.
icasso_opts.sel_mode = 'randinit';  % Options are 'randinit', 'bootstrap' and 'both'
icasso_opts.num_ica_runs = 20; % Number of times ICA will be run
icaOptions{1,1} = 'posact';
icaOptions{1,2} = 'on';

%% Data file pattern. Include all subjects (3D images) in the file pattern or use char 
% array if you want to use a particular order like char('D:\myfile.img',

%% functional_main = '/export/research/analysis/human/collaboration/NeuroMark/Data/UKBiobank/fetch/results/extracted_sMRI/';
% sub_fold = dir(functional_main);
% sub_fold = sub_fold(3:end);

% load /export/mialab/users/zfu/Matlab/UKBIO/Results/Subject_selection_str/UKBio.mat
% sub_fold = sub_fold(analysis_idx); 
% Sub = length(sub_fold); % number of subjects
% input_data_file_patterns = cell(Sub,1);

% for s_sub = 1:Sub
%     temp_file = fullfile( functional_main , sub_fold(s_sub,1).name, 'T1', 'Sm10mwc1pT1.nii.nii'); % functional image folder
%     input_data_file_patterns(s_sub) = {temp_file};
% end
smri_paths_test_site2;

%% Enter directory to put results of analysis
%outputDir = '/export/mialab/users/zfu/Matlab/UKBIO/Results/ICA_str';
outputDir = '..path/';

%% Enter Name (Prefix) Of Output Files
% prefix = 'UK_SPM12_SM10';
prefix = 'GIGICA';

%% Parallel info
% enter mode serial or parallel. If parallel, enter number of
% sessions/workers to do job in parallel
parallel_info.mode = 'parallel';
% parallel_info.num_workers = 40;
parallel_info.num_workers = 64;

%% Enter location (full file path) of the image file to use as mask
% or use Default mask which is []
%maskFile = '/export/mialab/users/zfu/Matlab/UKBIO/Results/Subject_selection_str/UKBio.nii';
maskFile = '..path/ica_analysisMask.nii';

%% Batch Estimation. If 1 is specified then estimation of 
% the components takes place and the corresponding PC numbers are associated
% Options are 1 or 0
doEstimation = 0; 

%% Number of pc to reduce each subject down to at each reduction step
% The number of independent components the will be extracted is the same as 
% the number of principal components after the final data reduction step.  
% numOfPC1 = 30;

%% Scale the components. Options are 0 and 2
% 0 - Don't scale
% 2 - Scale to Z scores
scaleType = 0;

%% 'Which ICA Algorithm Do You Want To Use';
% see icatb_icaAlgorithm for details or type icatb_icaAlgorithm at the
% command prompt.
% Note: Use only one subject and one session for Semi-blind ICA. Also specify atmost two reference function names

% 1 means infomax, 2 means fastICA, etc.
% algoType = 1;
algoType = 'gig-ica';
% refFiles = {'/export/research/analysis/human/collaboration/NeuroMark/NetworkTemplate/Structural/smri_first_half_group_component_ica_.nii'};
refFiles = {'..path/smri_first_half_group_component_ica_.nii'};
