class MerchantsController < ApplicationController
  def index
    @merchants = MerchantsFacade.new.get_merchants
  end

  def show
    @merchant = MerchantsFacade.new.get_merchant(params[:id])
    @items = MerchantsFacade.new.get_merchant_items(params[:id])
  end
end