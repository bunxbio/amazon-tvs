nokogiri = Nokogiri.HTML(content)

product = {}

product['url'] = page['vars']['url']
product['category'] = page['vars']['category']

canonical_link = nokogiri.css('link').find{|link| link['rel'].strip == 'canonical' }
product['asin'] = canonical_link['href'].split("/").last

product['title'] = nokogiri.at_css('#productTitle').text.strip

seller_node = nokogiri.at_css('a#bylineInfo')
if seller_node
	product['seller'] = seller_node.text.strip
else
	product['author'] = nokogiri.css('a.contributorNameID').text.strip
end

reviews_node = nokogiri.at_css('span#acrCustomerReviewText')
reviews_count = reviews_node ? reviews_node.text.strip.split(' ').first.gsub(',','') : nil
product['reviews_count'] = reviews_count =~ /^[0-9]*$/ ? reviews_count.to_i : 0

rating_node = nokogiri.at_css('#averageCustomerReviews_feature_div i.a-icon span')
stars_num = rating_node ? rating_node.text.strip.split(' ').first : nil
product['rating'] = stars_num =~ /^[0-9.]*$/ ? stars_num.to_f : nil

price_node = nokogiri.at_css('#price_inside_buybox', '#priceblock_ourprice', '#priceblock_dealprice', '.offer-price')
if price_node
	product['price'] = price_node.text.strip.gsub(/[\$,]/,'').to_f
end

availability_node = nokogiri.at_css('#availability')
if availability_node
	product['available'] = availability_node.text.strip == 'In Stock.' ? true : false
else
	product['available'] = nil
end

description = ""
nokogiri.css('#feature-bullets li').each do |li|
	unless li['id'] || (li['class'] && li['class'] != 'showHiddenFeatureBullets')
		description += li.text.strip + ' '
	end
end
product['description'] = description.strip


product['_collection'] = "products"
outputs << product