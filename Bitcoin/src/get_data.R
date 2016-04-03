suppressMessages(library(Rbitcoin))
bitcoin_data <- as.data.frame(market.api.process(market = 'bitstamp', currency_pair = c('BTC', 'USD'), action='ticker'))
write.table(bitcoin_data, "../Data/data.csv", sep=",", row.names=FALSE, col.names=FALSE, append = TRUE)
