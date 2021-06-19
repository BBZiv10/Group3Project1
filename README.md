# Bitcoin trend and correlation analysis

## Hypothesis:

* Bitcoin adoption analysis in the US
* Bitcoin price correlation with Wallet addresses, mining hashrates and mining difficulty 
* Check if volume of BTC options influences BTC spot prices. If yes, what’s the relationship between two?  
* Does the primary market (S&P500) impact BTC price? When did both the markets swing drastically? Can we  explain that  move? 
* What’s the trend in BTC price over the last 5 years? Can we identify bull vs. bear?  
* Is there any correlation between BTC price and the major world currencies? CPI Index? Billion Prices Project index (improved CPI)

## Data sources:
* Coin ATM Radar for ATM data
* census.gov for 2020 US population data
* BTC wallet address, hash rate and difficulty data by invoking Quandl API 
* Deribit options trading analysis and correlation with price ‘x’ days before expiration (API  instructions here)
* S&P500 and BTC daily closes from Coingeko and Yahoo Finance
* Forex data source - Quandl API
* Mapbox API for ATM distribition by US states - displayed in the US map.

## Exploring datasets:
Postgres SQL and Pandas libraries are used for data pre-procdssing and shaping before analysis

## Analysis:
Individual pythin notebooks implement one complete use case. 

