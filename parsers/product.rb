html = Nokogiri.HTML(content)
product = page['vars']

product['status'] = html.css('#vi-itm-cond').text.strip

outputs << product