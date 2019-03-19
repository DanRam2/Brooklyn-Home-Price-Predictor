# Brooklyn-Home-Price-Predictor
This is a project implementing the machine learning model for predict home sale prices for Brooklyn using Google Cloud Platform


1)  Research question:  what is the group trying to learn or question to answer? Who is interested (audience)?

 I have a house at brooklyn. Based on the certain parameters such as area(per square ft), zipcode, nieghbourhood, year of built and      type of property I would like to know the estimated sale price of the kind of property I am looking for.
 
 
 Based on the kind of property I have, I have put it up for sale. I have kept a asking price for the same. Based on the parameters such as
 area(per square ft), zipcode, nieghbourhood, year of built, I would like to know whether my asking price is approriate or not.
 
 Here we have assumed that if the asking price is within +/- 10 % of the predicted price, then asking price is appropriate
    
    


2)  Domain and Data: 

Housing(Real Estate)/Finance
Data Source: https://www1.nyc.gov/site/finance/taxes/property-annualized-sales-update.page


Preprocessing:
There is column in sales price which contain zero values. These are property transfers from relatives. They have to ignored while analysing the data


Size of data: 77MB (compressed file); nearly 3.9 Million rows; data from 2007 to 2018

EDA: 1) Bar graph of tax class (what percentage to each tax class)
     2)Boxplots of land_sqft or gross_sqft by tax class (what are the ranges of property square footage for each tax class)
     3)Scatter plot of land_sqft by sales_price (What type of relationship is here?)
     4)Scatter plot of year_built by sales_price (Potential look at value of properties overtime)
     
Dashboard: Price of nieghbourhood from 2007 to 2018 for the User and change in the median price of houses across all nieghbourhoods of brooklyn for data engineers  

GCP further processing/ Evaluation of results: Evaluation of results will be tailored based on the machine learning model. For logistic regression, we will use a confusion matrix and Area Under the Curve (AUC) of Receiver Operating Characteristics (ROC) curve. For linear regression, we will use Root Mean Squared Error (RMSE) and R-squared. 


Steps for production Model: Extract phase will involve polling the datasource https://www1.nyc.gov/site/finance/taxes/property-annualized-sales-update.page every year. This will be a scheduled cron job that will be run periodically. The data is usually made available in the month of april. Upon the extraction of the data which is originally in the xls format, the file is transformed to csv format. The csv file is further transformed to remove unnecessary headers from the file to make  it fit for building machine learning models. 
     
     
Final dashboard for user group will make use of the predictions from our models into appealing visuals to help our target user group make better decisions regarding their real estate transactions



