#question 1
head -n 1 /anvil/projects/tdm/
data/stackoverflow/unprocessed/2011.csv | tr "," "\n" | wc -l


head -n 1 /anvil/projects/tdm/data/stackoverflow/unprocessed/2011.csv | tr "," "\n" | head -n 100


#question 2
head -n 1 /anvil/projects/tdm/data/stackoverflow/processed/2011.csv | tr ";" "\n" | wc -l

head -n 1 /anvil/projects/tdm/data/iowa_liquor_sales/iowa_liquor_sales_cleaner.csv | tr ";" "\n" | wc -l

#q 3
cut -d ";" -f 21 /anvil/projects/tdm/data/iowa_liquor_sales/iowa_liquor_sales_cleaner.csv | sort -n | tail -n 5

cut -d ";" -f 24 /anvil/projects/tdm/data/iowa_liquor_sales/iowa_liquor_sales_cleaner.csv | sort -n | tail -n 5

#q 4

cat /anvil/projects/tdm/data/iowa_liquor_sales/iowa_liquor_sales_cleaner.csv | cut -d ";" -f 18 | sort -n | uniq -c

#q5
tail -n +2 /anvil/projects/tdm/data/iowa_liquor_sales/iowa_liquor_sales_cleaner.csv | cut -d ";" -f 20 | cut -c 2 | sort | uniq -c | tail -n 10