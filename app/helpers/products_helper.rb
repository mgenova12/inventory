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
      options_for_select([["Dry", "dry"], ["Refrigerated", "refrigerated"], ["Frozen", "frozen"]])
    elsif product.item_type == 'refrigerated'
      options_for_select([["Refrigerated", "refrigerated"],["Dry", "dry"], ["Frozen", "frozen"]])
    else 
      options_for_select([["Frozen", "frozen"], ["Dry", "dry"], ["Refrigerated", "refrigerated"]])
    end
  end

  def count_by_options(product)
    if product.measurement == 'EA'
      options_for_select([["EA", "EA"], ["BIN", "BIN"], ["SLEEVE", "SLEEVE"], ["%", "%"]])
    elsif product.measurement == 'BIN'
      options_for_select([["BIN", "BIN"], ["EA", "EA"], ["SLEEVE", "SLEEVE"], ["%", "%"]])
    elsif product.measurement == 'SLEEVE'
      options_for_select([["SLEEVE", "SLEEVE"], ["BIN", "BIN"], ["EA", "EA"], ["%", "%"]])          
    else 
      options_for_select([["%", "%"], ["SLEEVE", "SLEEVE"], ["BIN", "BIN"], ["EA", "EA"]])          
    end
  end


end

