html = Nokogiri.HTML(content)

products = html.css('.b-list__items_nofooter .s-item')
products.each do |item|
  price_raw = item.css('.s-item__price').text.strip
  price = price_raw.match(/[0-9]+\.[0-9]+/)[0].to_f
  unit = price_raw.match(/^\s*[^0-9]+/)[0].strip
  url = item.css('.s-item__link').attr("href").text.strip

  pages << {
    url: url,
    page_type: "product",
    vars: {
      name: item.css('.s-item__title').text.strip,
      unit: unit,
      price: price,
      url: item.css('.s-item__link').attr("href").text.strip
    }
  }
end
