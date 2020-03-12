stockstoadd = ["fb", "amzn", "nflx", "goog"]
stockstoadd.each do |ticker|
    Stock.create(ticker: ticker)
end