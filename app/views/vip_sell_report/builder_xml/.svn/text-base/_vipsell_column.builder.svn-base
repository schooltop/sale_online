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
xml.graph(:caption=>'them', :numberprefix=>'%A5', :xaxisName=>'Day', :useRoundEdges=>'1', :showValues=>'0', :legendBorderAlpha=>'0') do

     xml.categories do
       for item in data
			 xml.category(:label=>item[:id].to_s+"=")
		   end
     end

    xml.dataset(:seriesName=>'pyname') do
		for item in data
			xml.set(:value=>item[:total_price])
		end
    end


end