# MechaCar Statistical Analysis
Module 16 - R
## Linear Regression to Predict MPG
This dataset examines 50 prototypes with the help the linear regression. Linear regression is an excellent tool when attempting to predict the value of a variable based on the value of another variables; In this dataset, we are using the independent variables such as vehicle length, vehicle weight, spoiler angle, ground clearance, and All Wheel Drive (AWD), to predict the dependent variable Miles per Gallon (MPG).
---
![1](https://user-images.githubusercontent.com/119131202/229006575-66ddf513-a87e-4a54-862f-9093a0265c8e.PNG)
---
Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
---
By examining the p-values for each variable, since the p-value is less than .05, we can state that we have 95% confidence that the vehicle length and ground clearance have a significant impact on the vehicles MPG. Additionally, with p-values greater than .05, we can state with 95% confidence that vehicle weight, spoiler angle, and All Wheel Drive (AWD) does NOT have a significant impact on the vehicles MPG.
---
Is the slope of the linear model considered to be zero? Why or why not?
The overall p-value of the model is 5.35e-11, which is less than the assumed significance level of 0.05. With this p-value, we can confidently reject our null hypotheses, meaning that the slope of the model is not zero. For example, the as the independent variables increase, so does the dependent variable (MPG), which means the slope cannot be zero.
---
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
---
Yes. The R-squared measure is a great way to determine how well the data fits the regression model. Within our model, the R-squared value is 0.7149, meaning that 71.5% of all MPG predictions will fit this model, so this linear model effectively predicts the vehicles MPG of the MechaCar prototypes.
## Summary Statistics on Suspension Coils
The Suspension coil dataset examines all vehicles in 3 different lots. When analyzing all manufacturing lots, we found that the mean PSI is 1498.78, the median PSI is 1500, the count of coils in 150, and the PSI differentiates by 7.89 on average.
![2](https://user-images.githubusercontent.com/119131202/229006880-4f305284-54ae-4eb7-8794-c342b03982fe.PNG)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

All Lots:
The data summary states that the variance of PSI is 62.29, which is less than the stated 100 PSI max, so the entire population does meet the design specification.
---
![3](https://user-images.githubusercontent.com/119131202/229006972-a2d1f760-163d-4396-8241-171e9b0c32db.PNG)
---
Lot 1:
---
The 50 vehicles that were in lot 1 had a summary containing a mean of 1500 PSI, median 1500 PSI, and standard deviation of 0.990. Lastly, the variance of PSI is 0.980, which is much less than the design specification of 100 PSI, meaning lot 1 does fit the design.
---
Lot 2:
---
The 50 vehicles that were in lot 2 had a summary containing a mean of 1500.2 PSI, median 1500 PSI, and standard deviation of 2.733. Lastly, the variance of PSI is 7.469, which is much less than the design specification of 100 PSI, meaning lot 2 does fit the design.
---
Lot 3:
---
The 50 vehicles that were in lot 3 had a summary containing a mean of 1496.14 PSI, median 1498.5 PSI, and standard deviation of 13.049. Lastly, the variance of PSI is 170.286, which is greater than the design specification of 100 PSI, meaning lot 3 does NOT fit the design.
---
To summarize, all manufacturing lots when examined all together, meet the design specifications. However, when analyzing lots separately, only lots 1 and 2 fit the design, and lot 3 does not. With this information, lot 3 is what is causing most of the variation within the model.
---
## T-Tests on Suspension Coils
T-tests are great for statistically testing and comparing the means of two groups. From the t-test of all manufacturing lots, we can see that the average of the sample is 1498.78, which was shown in the summary statistics in the previous deliverable. The t-test has a p-value of 0.060, which is greater than 0.05, meaning that is not enough evidence to reject the null hypothesis.
The t-test for lot 1 states that there is a p-value of 1, which is greater than 0.05, meaning that lot 1 is not statistically significant. Similarity, the p-value for lot 2 is 0.607, which is greater than 0.05, so lot 2 is not statistically significance. Lastly, lot 3 had a p-value of 0.0417, which is less than 0.05, meaning that lot 3 is statistically significant. With this information, the data suggest that lot 3 is causing the variance in the manufacturing lots.
## Study Design: MechaCar vs Competition
Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horsepower, maintenance cost, or safety rating.

1. What metric or metrics are you going to test?
To examine MechaCar against competition, the metrics will be Price of vehicles.

2. What is the null hypothesis or alternative hypothesis?
Null hypothesis: The Price of the vehicles within the MechaCar have an impact on the MPG.
Alternative hypothesis: The Price of the vehicles within the MechaCar does not have an impact on the MPG.
3. What statistical test would you use to test the hypothesis? And why?
I would use a t-test since we are comparing two groups. The t-test would allow us to find the p-value and determine if the prove of the vehicle has a significant impact on the MPG.
4. What data is needed to run the statistical test?
The price for all MechaCar vehicles is needed to run this t-test.
---
Statistical Analysis performed by Katelin Catton
---
3/30/2023
