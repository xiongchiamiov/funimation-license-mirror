# -*- coding: UTF-8 -*-
require 'open-uri'
require 'nokogiri'

doc = Nokogiri::HTML(open('http://funimation.com/f_index.cfm?page=copy'))

doc.css('td p').slice(2..-2).each do |p|
	puts p.content << '<br />'
end
