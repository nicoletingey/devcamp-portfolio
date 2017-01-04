class PortfoliosController < ApplicationController
  @portfolio_items = Portfolio.all
end
