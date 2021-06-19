# Group3Project1
Hypothesis:

Check if volume of BTC options influences BTC spot prices. If yes, what’s the relationship between two?
Does the primary market (S&P500) impact BTC price? When did both the markets swing drastically? Can we explain that  move? 
What’s the trend in BTC price over the last 5 years? Can we identify bull vs. bear? Can we use the historical data to forecast the next 6 months using Monte Carlo? What’s our assumptions? 
Does BTC price move based on BTC hashrates? Country heatmap for BTC hash rates.
Is there any correlation between BTC price and the major world currencies? CPI Index? Billion Prices Project index (improved CPI)

Data sources:
Deribit options trading analysis and correlation with price ‘x’ days before expiration (API instructions here)
S&P500 and BTC daily closes from Coingeko and Yahoo Finance
Forex data source - Quandl API
BTC hash rates data sources: 
https://cbeci.org/mining_map
https://jsapi.apiary.io/apis/blockchaininfo/reference/simple-real-time-data/hash-rate.html
https://www.statista.com/statistics/1200477/bitcoin-mining-by-country/
Number of unique Bitcoin addresses

Exploring datasets:
All the above mentioned APIs or datasets are having quality data for our analysis. Deribit is the new data source. We are able to fetch futures data through API

Hashrate data sources are still being explored. We should be able to decide on definite source by Saturday. 


APIs:
Deribit: https://docs.deribit.com/
Quandl API
Alpaca API

Options Data:
https://www.paradigm.co/platform-activity
New financial lib - will decide on Saturday or Monday based on our high level design.

