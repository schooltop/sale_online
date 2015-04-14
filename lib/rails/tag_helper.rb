module Rails
  module TagHelper 
        
    def include_all_jquery_ui_tags(*js)
      html=""
      %w[jquery jquery-ui].each{|j| html+=content_tag(:script,"",:src=>"/javascripts/#{j}.js")}
      html+=content_tag(:link,"",:href=>'/stylesheets/jquery-ui.css',:rel=>'stylesheet',:type=>'text/css')
    end
    
    def javascript_include_assets_tag(*js)
      html=""
      js.each{|j| html+=content_tag(:script,"",:src=>"/assets/javascripts/#{j}.js")}
      html
    end
    
    def same_js_with_style_tag(*jcs)
          dir = jcs.last.include?("/") ? jcs.last : "/assets"
          html=""
          jcs.each{|jc| 
            html += content_tag(:link,"",:href=>"#{dir}/stylesheets/#{jc}.css",:rel=>'stylesheet',:type=>'text/css')
            html += content_tag(:script,"",:src=>"#{dir}/javascripts/#{jc}.js")}
          html
    end
    
    def stylesheet_link_assets_tag(*css)
      html=""
      css.each{|c| html+=content_tag(:link,"",:href=>"/assets/stylesheets/#{c}.css",:rel=>'stylesheet',:type=>'text/css')}
      html
    end

  
    def overlay_div_tag(options={})
      id=options[:id]
      style_class=options[:class]||id
      div=%Q[<div id="#{id||'overlay'}" class="#{style_class}" style="position: absolute; top: 0px; left: 0px;z-index: 10; opacity: 0.4;filter:alpha(opacity=40); background-color: #{options[:color]||'#666'}; 
       display: none;">
      </div>]
      js_h_and_w="window.onload=function () {"
      js_h_and_w+="var h1 = document.documentElement.scrollHeight;"
      js_h_and_w+="var h2 = document.documentElement.clientHeight;"
      js_h_and_w+="var h = (h1 > h2 ? h1 : h2) + 'px'; "
      js_h_and_w+="var w = document.documentElement.scrollWidth + 'px';"
      js_h_and_w+="pop = document.getElementById('#{id}');"
      js_h_and_w+="pop.style.height = h;pop.style.width = w;}"
      javascript_tag(js_h_and_w)+div
    end
    
    def input_with_value_tag html={},tag=:input
      content_tag(tag,"",{:type=>"text",:style=>"color:grey;",
                  :onFocus=>"if (value =='#{html[:value]}'){value ='';this.style.color='grey'}",
                  :onBlur=>"if (value ==''){value='#{html[:value]}';this.style.color='grey'}"}.merge(html))
      
    end
    
    
    def button_tag title,url
      %Q[<button title="#{title}" onclick="document.location.href='#{url}'">#{title}</button>]
    end
    
    def like_iframe_tag html_options={},&content
       cons = capture(&content)
       concat %!
       #{content_tag(:div,cons,{:style=>"overflow-x: auto; overflow-y: auto; width: #{html_options[:width]||"100%"}; height: #{html_options[:height]||"100px"}; border:solid 1px;border-color:#aaa;"}.merge(html_options))}
       !, content.binding 
    end
    
    def rmagic_image_tag html_options={}
      html_options[:style] = html_options[:style].to_s+"border: #000000 1px solid"
      content_tag(:img,"",html_options)
    end
    
    
    #选择级联城市 借助jquery js文件是 select_cities.js
    def select_addresses_tag p="province",c="city",a="area"
      select_provinces(p)+select_cities(c)+select_areas(a)
    end
    
    def select_jiguan p="province",c="city"
      select_provinces(p)+select_cities(c)
    end
    
    def select_provinces p
      select_tag(p, options_for_select(["请选择省"]) + options_from_collection_for_select(Province.all, :code, :name),
                 :onchange => "changecity(this.value);")
    end
    
    def select_cities c
      select_tag(c, options_for_select(["请选择市"]),:onchange => "changearea(this.value);")
    end
    
  end
end