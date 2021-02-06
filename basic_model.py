# -*- coding: utf-8 -*-
"""
Created on Fri Feb  5 18:58:32 2021

@author: llint
"""


import matplotlib.pyplot as plt
plt.style.use('seaborn-whitegrid')
import numpy as np
import math

import pandas as pd
import io
import requests

import numpy as np
from sklearn.tree import DecisionTreeRegressor
import matplotlib.pyplot as plt


url = "https://raw.githubusercontent.com/chloe-sl/datathon-2021/main/training.csv"
s = requests.get(url).content
training = pd.read_csv(io.StringIO(s.decode('utf-8')))

url = "https://raw.githubusercontent.com/chloe-sl/datathon-2021/main/submission_format.csv"
s = requests.get(url).content
predictions = pd.read_csv(io.StringIO(s.decode('utf-8')))


# import individual training data with outlier removed
url = "https://raw.githubusercontent.com/chloe-sl/datathon-2021/main/clean_store1.csv"
s = requests.get(url).content
store1 = pd.read_csv(io.StringIO(s.decode('utf-8')))

url = "https://raw.githubusercontent.com/chloe-sl/datathon-2021/main/clean_store2.csv"
s = requests.get(url).content
store2 = pd.read_csv(io.StringIO(s.decode('utf-8')))

url = "https://raw.githubusercontent.com/chloe-sl/datathon-2021/main/clean_store3.csv"
s = requests.get(url).content
store3 = pd.read_csv(io.StringIO(s.decode('utf-8')))

url = "https://raw.githubusercontent.com/chloe-sl/datathon-2021/main/clean_store4.csv"
s = requests.get(url).content
store4 = pd.read_csv(io.StringIO(s.decode('utf-8')))

#### store 1 ####
# create model
store1_model = DecisionTreeRegressor(random_state=1)
store1_features = store1[['X3HourBucket', 'dayOfTheWeek']]
store1_target = store1.GrossSoldQuantity
store1_model.fit(store1_features, store1_target)

# add the dayOfTheWeek column 
#predictions.drop(columns = ['dayOfTheWeek'])
predictions.insert(4, 'dayOfTheWeek', 0)

# calculate dayOfTheWeek
predictions['dayOfTheWeek'] = predictions['dayOfTheYear'] % 7

# insert predictions into predictions dataframe
print(store1_model.predict(predictions[['3HourBucket', 'dayOfTheWeek']]))
predictions.GrossSoldQuantity[predictions['StoreNumber'] == 1000] = store1_model.predict(predictions[['3HourBucket', 'dayOfTheWeek']])


#### store 2 ####
# create model
store2_model = DecisionTreeRegressor(random_state=1)
store2_features = store2[['X3HourBucket', 'dayOfTheWeek']]
store2_target = store2.GrossSoldQuantity
store2_model.fit(store2_features, store2_target)

# insert predictions into predictions dataframe
predictions.GrossSoldQuantity[predictions['StoreNumber'] == 2000] = store2_model.predict(predictions[['3HourBucket', 'dayOfTheWeek']])


#### store 3 ####
# create model
store3_model = DecisionTreeRegressor(random_state=1)
store3_features = store3[['X3HourBucket', 'dayOfTheWeek']]
store3_target = store3.GrossSoldQuantity
store3_model.fit(store3_features, store3_target)

# insert predictions into predictions dataframe
predictions.GrossSoldQuantity[predictions['StoreNumber'] == 3000] = store3_model.predict(predictions[['3HourBucket', 'dayOfTheWeek']])


#### store 4 #### DON'T RUN YET NEED TO TAKE INTO ACCOUNT ADDITIONAL PATTERNS
# create model
# store4_model = DecisionTreeRegressor(random_state=1)
# store4_features = store4[['X3HourBucket', 'dayOfTheWeek']]
# store4_target = store4.GrossSoldQuantity
# store4_model.fit(store4_features, store4_target)

# # insert predictions into predictions dataframe
# predictions.GrossSoldQuantity[predictions['StoreNumber'] == 4000] = store1_model.predict(predictions[['3HourBucket', 'dayOfTheWeek']])



# turn qty into integer values
predictions.GrossSoldQuantity = predictions.GrossSoldQuantity.map(lambda q: math.ceil(q))
print(predictions)

predictions.to_csv('G:/My Drive/From OneDrive folder/datathon/datathon2021/predictions.csv')










