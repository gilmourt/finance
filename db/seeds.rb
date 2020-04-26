stockstoadd = ["FB", "AMZN", "NFLX", "GOOG"]
stockstoadd.each do |ticker|
    Stock.create(ticker: ticker)
end