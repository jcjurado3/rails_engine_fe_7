class MerchantsFacade
  def get_merchants
    service = MerchantsService.new.get_all_merchants

    results = service[:data]
    
    results.map do |merchant|
      Merchant.new(merchant)
    end
  end

  def get_merchant(id)
    service = MerchantsService.new.get_one_merchant(id)

    results = service[:data]
    Merchant.new(results)
  end

  def get_merchant_items(id)
    service = MerchantsService.new.get_items_by_merchant(id)

    results = service[:data]

    results.map do |item|
      Item.new(item)
    end
  end
end