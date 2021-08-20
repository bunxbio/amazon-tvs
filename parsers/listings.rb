nokogiri = Nokogiri.HTML(content)

products = nokogiri.css('.a-list-item .a-section a')
products.each do |product|
	a_element = product.attr('href')
	url = URI.join('https://www.amazon.com', a_element).to_s.split('?').first

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