Hi! Welcome to our 502 final project repo! We are Lujia Deng, Tianxing Jiang, Shuyang Yu, and Yunfei Zhang.

## Summary & Code Files

Data Source: The dataset consists of 7 tables stored on an S3 bucket (s3://dataset.secdatabase.com/) owned by SECDatabase.com.

1). Data Collection -- Acquired datasets from AWS, saved into our S3 bucket through Athena

2). Initiate Data Exploration -- Look at the structures and variables in different datasets in the data source. ## See “01-Dataset Exploration.ipynb”

3). Dataset Manipulation

  Merge the datasets together using AWS Athena and select features based on our need using sparksql; ## See “02-Merge Data” folder
  
  Reformat the dataset and data cleaning ## See “03-Reformatting Dataset.ipynb”
  
4). Explore the final dataset and visualization ## See “04-Visuals of the Final Dataset.ipynb”

5). Get prepared for machine learning models ## See “05-Preprocessing before ML”

6). Building predictive models and interpretation

Task 1: Predicting profit from selected variables ## See “06-ML task1.ipynb”

Task 2: Predicting industries from companies’ performance ## See “07-ML task2.ipynb”

Failed Trial: Predicting profit increase / decrease ## See “08-ML trial task.ipynb”

7). Conclusion and Future Work -- Details please see the report ## "09-Report.pdf"

Enjoy! :)
