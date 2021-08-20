nokogiri = Nokogiri.HTML(content)

products = nokogiri.at_css('h2.a-size-mini')
products.each do |product|
	a_element = product['href']
	url = URI.join('https://www.amazon.com', a_element).to_s

	pages << {
		url: url,
		page_type: 'products',
		force_fetch: true,
		vars: {
			category: page['vars']['category'],
			url: url
		}
	}
end