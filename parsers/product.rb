html = Nokogiri.HTML(content)
product = page['vars']

product['status'] = html.xpath('/html/body/div[3]/div[3]/div[3]/div[2]/div/div/div[2]/div[1]/div[2]/ul[2]/li[1]/span')

outputs << product