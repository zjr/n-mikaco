Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                     :name => "footer-left",
                     :remove => "#footer-left")
Deface::Override.new(:virtual_path => "spree/shared/_taxonomies", 
                     :name => "h6_taxonomy_root",
                     :replace => "code[erb-loud]:contains('t(:shop_by_taxonomy, :taxonomy => taxonomy.name.singularize)')",
                     :text => "<%= t(:shop_by_taxonomy, :taxonomy => taxonomy.name) %>")
Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                     :name => "logo", 
                     :replace_contents => "#logo", 
                     :text => "<h2><a class=\"brand\" href=\"/\" alt=\"Mika Couture Home\">Mika Couture</a></h2>")