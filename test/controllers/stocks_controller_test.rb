require "test_helper"

describe StocksController do
  let(:stock) { stocks :one }

  it "gets index" do
    get stocks_url
    value(response).must_be :success?
  end

  it "gets new" do
    get new_stock_url
    value(response).must_be :success?
  end

  it "creates stock" do
    expect {
      post stocks_url, params: { stock: { } }
    }.must_change "Stock.count"

    must_redirect_to stock_path(Stock.last)
  end

  it "shows stock" do
    get stock_url(stock)
    value(response).must_be :success?
  end

  it "gets edit" do
    get edit_stock_url(stock)
    value(response).must_be :success?
  end

  it "updates stock" do
    patch stock_url(stock), params: { stock: {  } }
    must_redirect_to stock_path(stock)
  end

  it "destroys stock" do
    expect {
      delete stock_url(stock)
    }.must_change "Stock.count", -1

    must_redirect_to stocks_path
  end 
end
