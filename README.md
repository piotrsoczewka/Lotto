## 1) Introduction
Lotto is the biggest lottery set up in Poland. The main prize goes to those, who correctly select 6 out of 49 numbers and awards reach several dozens of millions of polish zlotys. 

In this project, I am going to analyze data (money award, date, location of the winner) of Lotto main prizes over one million zlotys from the last 20+ years. The analysis will tell, if there are any monthly, yearly and locational patterns in Lotto's wins distribution. While potential findings will not answer how to score 6/6 numbers, it may bring valuable information Lotto's marketers on how, when and where people play Lotto in Poland.


This exploratory data analysis is realised as the final project in "Data Analyst" bootcamp organized by Reaktor PWN.

## 2) Tools and techniques used in the project
* SQL
* Python
* Web scrapping (requests, BeautifulSoup)
* Pandas
* Seaborn
* Statistics (significance testing, pingouin and scikit_posthocs libraries)


## 3) Data colletion

Lottery data was scraped from http://megalotto.pl/najwyzsze-wygrane/lotto. From HTML content, data about lottery prize, location of the lottery winner and lottery date were extracted, converted to desired data types and saved in database using SQL.

![plot](https://github.com/piotrsoczewka/Lotto/blob/master/images/lottery_data_sql.png)

Data about polish cities and provinces were scrapped from https://www.polskawliczbach.pl/Miasta and https://www.polskawliczbach.pl/Wojewodztwa. Tables were opened using pandas data frame, data types were converted to desired and tables were saved in database using SQL.

![plot](https://github.com/piotrsoczewka/Lotto/blob/master/images/lottery_polish_cities.png)

![plot](https://github.com/piotrsoczewka/Lotto/blob/master/images/lottery_polish_provinces.png)


Permision for one time, non commercial usage of the data was given by the websites' owners.
