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

  def distributor_options(product)
    if product.supplier == 'USFoods'
      options_for_select(
        [["US Foods", "USFoods"], ["Sysco", "Sysco"], ["Gordon", "Gordon"], ["Espo", "Espo"], 
        ["Holt", "Holt"], ["Jetro", "Jetro"], ["PrepCenter", "PrepCenter"], ["Sams", "Sams"], 
        ["Walmart", "Walmart"], ["Amazon", "Amazon"], ["Ecolab", "Ecolab"], ["Coke", "Coke"]]
      )
    elsif product.supplier == 'Sysco'
      options_for_select(
        [["Sysco", "Sysco"], ["US Foods", "USFoods"], ["Gordon", "Gordon"], ["Espo", "Espo"], 
        ["Holt", "Holt"], ["Jetro", "Jetro"], ["PrepCenter", "PrepCenter"], ["Sams", "Sams"], 
        ["Walmart", "Walmart"], ["Amazon", "Amazon"], ["Ecolab", "Ecolab"], ["Coke", "Coke"]]
      )      
    elsif product.supplier == 'Gordon'
      options_for_select(
        [["Gordon", "Gordon"], ["US Foods", "USFoods"], ["Sysco", "Sysco"], ["Espo", "Espo"], 
        ["Holt", "Holt"], ["Jetro", "Jetro"], ["PrepCenter", "PrepCenter"], ["Sams", "Sams"], 
        ["Walmart", "Walmart"], ["Amazon", "Amazon"], ["Ecolab", "Ecolab"], ["Coke", "Coke"]]
      )       
    elsif product.supplier == 'Espo'
      options_for_select(
        [["Espo", "Espo"], ["US Foods", "USFoods"], ["Gordon", "Gordon"], ["Sysco", "Sysco"], 
        ["Holt", "Holt"], ["Jetro", "Jetro"], ["PrepCenter", "PrepCenter"], ["Sams", "Sams"], 
        ["Walmart", "Walmart"], ["Amazon", "Amazon"], ["Ecolab", "Ecolab"], ["Coke", "Coke"]]
      )       
    elsif product.supplier == 'Holt'
      options_for_select(
        [["Holt", "Holt"], ["US Foods", "USFoods"], ["Gordon", "Gordon"], ["Espo", "Espo"], 
        ["Sysco", "Sysco"], ["Jetro", "Jetro"], ["PrepCenter", "PrepCenter"], ["Sams", "Sams"], 
        ["Walmart", "Walmart"], ["Amazon", "Amazon"], ["Ecolab", "Ecolab"], ["Coke", "Coke"]]
      )       
    elsif product.supplier == 'Jetro'
      options_for_select(
        [["Jetro", "Jetro"], ["US Foods", "USFoods"], ["Gordon", "Gordon"], ["Espo", "Espo"], 
        ["Holt", "Holt"], ["Sysco", "Sysco"], ["PrepCenter", "PrepCenter"], ["Sams", "Sams"], 
        ["Walmart", "Walmart"], ["Amazon", "Amazon"], ["Ecolab", "Ecolab"], ["Coke", "Coke"]]
      )       
    elsif product.supplier == 'PrepCenter'
      options_for_select(
        [["PrepCenter", "PrepCenter"], ["US Foods", "USFoods"], ["Gordon", "Gordon"], ["Espo", "Espo"], 
        ["Holt", "Holt"], ["Jetro", "Jetro"], ["Sysco", "Sysco"], ["Sams", "Sams"], 
        ["Walmart", "Walmart"], ["Amazon", "Amazon"], ["Ecolab", "Ecolab"], ["Coke", "Coke"]]
      )       
    elsif product.supplier == 'Sams'
      options_for_select(
        [["Sams", "Sams"], ["US Foods", "USFoods"], ["Gordon", "Gordon"], ["Espo", "Espo"], 
        ["Holt", "Holt"], ["Jetro", "Jetro"], ["PrepCenter", "PrepCenter"], ["Sysco", "Sysco"], 
        ["Walmart", "Walmart"], ["Amazon", "Amazon"], ["Ecolab", "Ecolab"], ["Coke", "Coke"]]
      )       
    elsif product.supplier == 'Walmart'
      options_for_select(
        [["Walmart", "Walmart"], ["US Foods", "USFoods"], ["Gordon", "Gordon"], ["Espo", "Espo"], 
        ["Holt", "Holt"], ["Jetro", "Jetro"], ["PrepCenter", "PrepCenter"], ["Sams", "Sams"], 
        ["Sysco", "Sysco"], ["Amazon", "Amazon"], ["Ecolab", "Ecolab"], ["Coke", "Coke"]]
      )       
    elsif product.supplier == 'Amazon'
      options_for_select(
        [["Amazon", "Amazon"], ["US Foods", "USFoods"], ["Gordon", "Gordon"], ["Espo", "Espo"], 
        ["Holt", "Holt"], ["Jetro", "Jetro"], ["PrepCenter", "PrepCenter"], ["Sams", "Sams"], 
        ["Walmart", "Walmart"], ["Sysco", "Sysco"], ["Ecolab", "Ecolab"], ["Coke", "Coke"]]
      )       
    elsif product.supplier == 'Ecolab'
      options_for_select(
        [["Ecolab", "Ecolab"], ["US Foods", "USFoods"], ["Gordon", "Gordon"], ["Espo", "Espo"], 
        ["Holt", "Holt"], ["Jetro", "Jetro"], ["PrepCenter", "PrepCenter"], ["Sams", "Sams"], 
        ["Walmart", "Walmart"], ["Amazon", "Amazon"], ["Sysco", "Sysco"], ["Coke", "Coke"]]
      ) 
    else 
      options_for_select(
        [["Coke", "Coke"], ["US Foods", "USFoods"], ["Gordon", "Gordon"], ["Espo", "Espo"], 
        ["Holt", "Holt"], ["Jetro", "Jetro"], ["PrepCenter", "PrepCenter"], ["Sams", "Sams"], 
        ["Walmart", "Walmart"], ["Amazon", "Amazon"], ["Ecolab", "Ecolab"], ["Sysco", "Sysco"]]
      ) 
    end
  end


end

