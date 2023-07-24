class MerchantsService
  def get_all_merchants
    get_url("/api/v1/merchants")
  end

  def get_one_merchant(id)
    get_url("/api/v1/merchants/#{id}")
  end

  def get_items_by_merchant(id)
    get_url("/api/v1/merchants/#{id}/items")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'http://localhost:3000') do |f|

    end
  end
end