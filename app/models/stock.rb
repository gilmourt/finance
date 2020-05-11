class Stock < ApplicationRecord
    validates :ticker, :uniqueness => true
    validate :ticker_must_be_valid, :on => :create 
    def ticker_must_be_valid
        begin 
            StockQuote::Stock.quote(self.ticker).is_a?(Object)
        rescue Exception => e
            errors.add(:ticker, "must be a valid stock ticker")
        end
    end
end
