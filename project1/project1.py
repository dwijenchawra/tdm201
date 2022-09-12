#Python

import pandas as pd
import time

inputData = pd.read_csv("data_beer.csv")
print(inputData)

countries = inputData["country"]
abv = inputData["abv"]
dataDict = {}

for i in range(len(countries)):
    curr = countries[i]
    if abv[i] != abv[i] or curr != curr:
        continue

    if curr not in dataDict:
        dataDict[curr] = [abv[i], 1]
    else:
        try:
            arr = dataDict[curr]
            arr[0] = ((arr[0] * arr[1]) + abv[i]) / (arr[1] + 1)
            arr[1] += 1
        except:
            print(curr)
            print(abv[i])
            print(type(abv[i]))

print(dataDict)


import matplotlib.pyplot as plt

abvList = [dataDict[x][0] for x in dataDict]

print("plotting")
plt.hist(abvList)
plt.xlabel('ABV')
plt.ylabel('Number')
plt.title('Histogram of Beer ABV')
plt.show()
print("done")
