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

***lottery_data table***

<img src="images/lottery_data_sql.png" width="820" height="100">


Data about polish cities and provinces were scrapped from https://www.polskawliczbach.pl/Miasta and https://www.polskawliczbach.pl/Wojewodztwa. Tables were opened using pandas data frame, data types were converted to desired and tables were saved in database using SQL.

***polish_cities table***

<img src="images/lottery_polish_cities.png" width="593" height="100">

***polish_provinces table***

<img src="images/lottery_polish_provinces.png" width="719" height="100">


Permision for one time, non commercial usage of the data was given by the websites' owners.

## 4) Results
1) Lotto yearly patterns from 1996 to 2020 (april)

<img src="images/Yearly_Lotto trends_1996-2020.png" width="660" height="300">
