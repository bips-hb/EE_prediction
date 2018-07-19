# EE_prediction
Supplementary material for "Accelerometry based prediction of energy expenditure in preschoolers" by Berit Steenbock, Marvin N. Wright, Norman Wirsik and Mirko Brandes.

Models to predict energy expenditure (EE) on raw accelerometer data with machine learning are included in the directory [models/](models/). Each file contains one machine learning model for a specific accelerometer model at a specific body position. For example, the file 

`lm_geneactiv_hip_right_METs_30s.Rds`

contains a linear model for prediction of METs with a GeneActiv accelerometer worn at the right hip. 

Examples to predict EE of new data are provided as R scripts. The file `example_convert_data.R` provides an example to calculate the summary statistics described in the paper in 30s windows. The file `example_predict_ee.R` provides an example to predict EE using our models. Both files probably require modifications to work with your data. 

If you have any questions, please open an issue here on GitHub. 