# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

The database used for this project was a CSV files. 

I've read and import the file to the R with the below code:
  - mecha <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
  
The multiple linear regression method was used because we would like to consider relationship between independent variables and multiple dependent variables.

The below codes were used to calculate multi-linear regression:

![Screenshot 2022-11-10 182812](https://user-images.githubusercontent.com/108438270/201241410-6782004d-7260-4cc1-9996-81935e8f33d1.png)


![Screenshot 2022-11-10 182914](https://user-images.githubusercontent.com/108438270/201241443-80316758-bf14-4c4f-867f-b9e3fd5a5f5e.png)
![Screenshot 2022-11-10 182939](https://user-images.githubusercontent.com/108438270/201241477-aacbf2e7-66ef-4f9a-a031-089349a40f26.png)


Based on the results(images) above:

- There are no variables that provide a non-random amount of variance to MPG values in that dataset. Since the value of pr(>|t|) is greater than .05, thus it has no significant impact of MPG values. Therefore, we can reject the null hypothesis.

- The slope is not considered to be zero because all vairables are directly proportional to mpg values.

- The liner model does not predict MPG effectively beacuse P value of the multiple linear regression test is 5.35e-11 which is higher than .05.



## Create Visualizations for the Trip Analysis


The database used for this project was a CSV files. 

I've read and import the file to the R with the below code:

  - suspension <- read.csv('Suspension_coil.csv', check.names = F, stringsAsFactors = F)
  
 The statistical summary of the data was calculated with the following code:
 
  - total_summary <- suspension %>% + summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

![Screenshot 2022-11-10 183907](https://user-images.githubusercontent.com/108438270/201243446-332caa1c-abd7-46fd-ae4b-2b49e33a947f.png)

The database is grouped based on manufacturing_lot ( means that the statistical summary is calculated for each group):

![Screenshot 2022-11-10 184050](https://user-images.githubusercontent.com/108438270/201243684-bcb4615b-065d-44bb-991d-71f3f0809395.png)

The design specifications for the MechaCar suspension coils show us that the variance of the suspension coils must not exceed 100 pounds per square inch. 
Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? 
Why or why not?

Based on result; total variance is less than 100, and also variances of lot1 & lot2 are less than 100.
The variance of lot3 is more than 100.


## T-Tests on Suspension Coils


Null hypothesis(H0) and alternative hypothesis(H1) are as follow; H0: The mean of all manufacturing lots is equal 1,500 pounds per square inch. H1: The mean of all manufacturing lots is not equal 1,500 pounds per square inch.

The below code is used to analyze these hypothesis:
  - t.test(suspension$PSI, mu=mean(suspension$PSI))


## Study Design: MechaCar vs Competition


To compare the performance of MechaCar vs its competitors is to do stastical tests between all of the cars in the competition. In this test we would do anova tests to determine if there are stastical differences between suspension coils. 

Our null hypothesis would be that there is no difference between the MechaCar and the competion. Our two possible alternative hypothses are that the MechaCar is better than the competion or the the MechaCar is worse than the competion.

Null hypothesis(H0): There is not difference between MechaCar performance vs other competitors Alternative hypothesis(H1): there is difference between MechaCar performance vs other competitors


