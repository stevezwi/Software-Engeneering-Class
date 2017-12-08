
#install.packages("Quandl")
#install.packages('quantmod')
library(Quandl)
require(quantmod)

#Downlead Data of Cooparations

#Loading data from Quandl

Quandl.api_key('MpEyFXzKbGZ6V4GLNrSL') # Key

#Lockheed Martin Corp.
LMT = Quandl.datatable('WIKI/PRICES', ticker='LMT',qopts.columns=c("date", "close"),  paginate=TRUE) #get data from Quandl, ticker= Company Name, Praginate= get more than 10'000 columns
#boing
BA= Quandl.datatable('WIKI/PRICES',  ticker='BA',qopts.columns=c("date", "close"),  paginate=TRUE)
#Raytheon
RTN= Quandl.datatable('WIKI/PRICES',  ticker='RTN',qopts.columns=c("date", "close"),  paginate=TRUE)
#Northrop Grumman Corp.
NOC= Quandl.datatable('WIKI/PRICES',  ticker='NOC',qopts.columns=c("date", "close"),  paginate=TRUE)
#General Dynamics Corp.
GD= Quandl.datatable('WIKI/PRICES',  ticker='GD',qopts.columns=c("date", "close"),  paginate=TRUE)
#United Technologies Corp.
BSTC= Quandl.datatable('WIKI/PRICES',  ticker='BSTC',qopts.columns=c("date", "close"),  paginate=TRUE)
#L-3 Communications Holding
LLL= Quandl.datatable('WIKI/PRICES',  ticker='LLL',qopts.columns=c("date", "close"),  paginate=TRUE)
#Huntington Ingalls Industries
HII= Quandl.datatable('WIKI/PRICES',  ticker='HII',qopts.columns=c("date", "close"),  paginate=TRUE)
#Harris Corp.
HRS= Quandl.datatable('WIKI/PRICES',  ticker='HRS',qopts.columns=c("date", "close"),  paginate=TRUE)
#Booz Allen Hamilton
BAH = Quandl.datatable('WIKI/PRICES',  ticker='BAH',qopts.columns=c("date", "close"),  paginate=TRUE)
#ManTech International Corp.
MANT= Quandl.datatable('WIKI/PRICES',  ticker='MANT',qopts.columns=c("date", "close"),  paginate=TRUE)
#GenCorp
GY= Quandl.datatable('WIKI/PRICES',  ticker='GY',qopts.columns=c("date", "close"),  paginate=TRUE)
#CACI International
CACI= Quandl.datatable('WIKI/PRICES',  ticker='CACI',qopts.columns=c("date", "close"),  paginate=TRUE)
#Harris Corp.
HRS= Quandl.datatable('WIKI/PRICES',  ticker='HRS',qopts.columns=c("date", "close"),  paginate=TRUE)
#Science Applications International Corp.
SAIC= Quandl.datatable('WIKI/PRICES',  ticker='SAIC',qopts.columns=c("date", "close"),  paginate=TRUE)
#Leidos
LDOS = Quandl.datatable('WIKI/PRICES',  ticker='LDOS',qopts.columns=c("date", "close"),  paginate=TRUE)
#Cubic Corp.
CUB = Quandl.datatable('WIKI/PRICES',  ticker='CUB',qopts.columns=c("date", "close"),  paginate=TRUE)
#Engility
EGL = Quandl.datatable('WIKI/PRICES',  ticker='EGL',qopts.columns=c("date", "close"),  paginate=TRUE)
#Orbital Sciences Corporation
ORB = Quandl.datatable('WIKI/PRICES',  ticker='ORB',qopts.columns=c("date", "close"),  paginate=TRUE)

sp_date = as.Date("2001-01-01") #startdate from which the calculations starts
a = merge(x= BA, y=BAH, by= "date", all.x= T)

b= subset(a,date>sp_date) #table with begining after specific date

#Market index

getSymbols.yahoo("^GSPC",.GlobalEnv, from = sp_date) #S&P 500

#♣Risk Free asset 

RF =Quandl("FRED/DTB3") # 3-Month Treasury Bill: Secondary Market Rate
