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

For data storage, a 'lotto' database was created using MySQL database management system.

Lottery data was scraped from http://megalotto.pl/najwyzsze-wygrane/lotto. From HTML content, data about lottery prize, location of the lottery winner and lottery date were extracted, converted to desired data types and saved in created lottery_data table.

***lottery_data table***

<img src="images/lottery_data_sql.png" width="820" height="100">


Data about polish cities and provinces were scrapped from https://www.polskawliczbach.pl/Miasta and https://www.polskawliczbach.pl/Wojewodztwa. Tables were opened using pandas data frame, data types were converted to desired and tables were directly saved in database using to_sql() function.

***polish_cities table***

<img src="images/lottery_polish_cities.png" width="593" height="100">

***polish_provinces table***

<img src="images/lottery_polish_provinces.png" width="719" height="100">

Object-oriented programming was used for writting the code. 

Permision for one time, non commercial usage of the data was given by the websites' owners.

## 4) Results

### Yearly patterns

<img src="images/Yearly_Lotto_trends_1996-2020.png" width="800" height="400">

<img src="images/Yearly_Lotto_distribution.png" width="760" height="380">

The line plot shows how number of wins and money won during the year were changing from 1996 to april 2020. Both paramaters were rising till 2008, where there is a change in the tendency - number of wins (so number of people playing) was dropping till 2011. Supposedly this is an aftermath of the 2008 financial crisis and people were playing less. Number of wins started rising again in 2011 till 2014. Money won also started dropping in 2011, but the later increase (2010-2012) preceeds increase in number of wins - perhaps the organizors wanted to encourage people for playing and increases the prizes? Both parameters starts slowly decrease from 2014 which I suppose shows that people seem less interested in lottery.

The latter boxplot shows distribution of money prizes. In the period 2007-2013 median and mean are higher than in other years - less people playing so higher prizes. After 2013 median remains low, on comparable level as before 2007, however is much higher that before 2007. It measn, that most of the prizes are rather low, however apparently there are higher rollovers.

To confirm that observed changes are not a result of coincidence and there are years that are significantly different thatn the others, I perform Kruskal test. This test was choose as suitable for multiple comparison of data that do not follow normal distribution.

<img src="images/kruskal.tif" width="219" height="50">


