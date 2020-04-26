class Stock < ApplicationRecord
    validate :ticker_must_be_valid, :on => :create 
    def ticker_must_be_valid
        begin 
            StockQuote::Stock.quote(self.ticker).is_a?(Object)
        rescue Exception => e
            errors.add(:ticker, "Must be a valid stock ticker")
        end
    end
end
