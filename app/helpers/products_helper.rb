module ProductsHelper
  
  def prepped_options(product)
    if product.prepped
      options_for_select([["Prepped", "true"], ["Not Prepped", "false"]])
    else 
      options_for_select([["Not Prepped", "false"], ["Prepped", "true"]])
    end
  end

  def item_type_options(product)
    if product.item_type == 'dry'
      options_for_select([["Dry", "dry"], ["Refigerated", "refigerated"], ["Frozen", "frozen"]])
    elsif product.item_type == 'refigerated'
      options_for_select([["Refigerated", "refigerated"],["Dry", "dry"], ["Frozen", "frozen"]])
    else 
      options_for_select([["Frozen", "frozen"], ["Dry", "dry"], ["Refigerated", "refigerated"]])
    end

  end

end

