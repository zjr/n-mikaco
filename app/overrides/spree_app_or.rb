Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                     :name => "footer-left",
                     :remove => "#footer-left")
Deface::Override.new(:virtual_path => "spree/shared/_taxonomies", 
                     :name => "h6_taxonomy_root",
                     :replace => "code[erb-loud]:contains('t(:shop_by_taxonomy, :taxonomy => taxonomy.name.singularize)')",
                     :text => "<%= t(:shop_by_taxonomy, :taxonomy => taxonomy.name) %>")
Deface::Override.new(:virtual_path => "spree/shared/_store_menu",
					 :name => "store_menu",
					 :insert_after => "li#home-link",
					 :text => "<li><a href=\"/about.html\" alt=\"About Mika Couture\">About</a></li>
					 	<li><a href=\"/blog.html\" alt=\"Mika Couture Blog\">Blog</a></li>
					 	<li><a href=\"/videos.html\" alt=\"Mika Couture Videos\">Videos</a></li>
					 	<li><a href=\"/news.html\" alt=\"Mika Couture News\">News</a></li>
					 	<li><a href=\"/events.html\" alt=\"Mika Couture Events\">Events</a></li>
					 	<li><a href=\"/portfolio.html\" alt=\"Mika Couture's Portfolio\">Portfolio</a></li>
					 	<li><a href=\"/contact.html\" alt=\"Contact Mika Couture\">Contact</a></li>")