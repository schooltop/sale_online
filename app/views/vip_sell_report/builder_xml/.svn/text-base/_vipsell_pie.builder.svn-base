#Creates xml with values for sales data of products 
#and the quantity of sales in each quarter of a year
#by a combination of differing scales of two y-axes.
#The values required for building the xml is obtained as parameter arr_data
#It expects an array in which each element is 
#itself an array with first element as label, second element as sales value
#and third element as quantity value
#coding：utf-8 require"builder"
 require 'builder'
 require 'fusioncharts_helper'
xml = Builder::XmlMarkup.new
xml.graph(:caption=>'them',:numberprefix=>'%A5',:showPercentageInLabel=>'1',:showValues=>'0',:showLabels=>'0',:showLegend=>'1') do
		for item in data
			xml.set(:value=>item[:total_price],:label=>item[:id].to_s+"=",:color=>''+get_fc_color)
		end
	# Run a loop to create the <set> tags within dataset for series 'Revenue'
end