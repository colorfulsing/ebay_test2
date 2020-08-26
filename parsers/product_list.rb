html = Nokogiri.HTML(content)

products = html.css('.b-list__items_nofooter .s-item')
products.each do |item|
  outputs << {
    name: item.css('.s-item__title').text.strip,
    price: item.css('.s-item__price').text.strip
  }
end
