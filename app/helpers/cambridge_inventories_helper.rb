module CambridgeInventoriesHelper

  def quantity_needed(product)
    if product['case_quantity'].presence
      case_amount = product['tuesday_max'].to_i - product['amount'].to_i
      case_result = (case_amount.to_f / product['case_quantity'].to_f).ceil
      case_result > 0 ? case_result : 0
    elsif product['measurement'] == '%'
      percent = (product['amount'].to_i * 0.01)
      percent <= 0.25 ? 1 : 0
    else
      result = (product['tuesday_max'].to_i - product['amount'].to_i)
      result > 0 ? result : 0
    end
  end


  def c_add_measurement_label(invent)
    if invent.cambridge_product.case_quantity || invent.cambridge_product.measurement == '%'
      'CASE'
    else 
      invent.cambridge_product.measurement
    end
  end

  def cambridge_add_percent(invent)
    if invent.cambridge_product.measurement == '%'
      number_to_percentage(invent.amount, precision: 0)
    else 
      invent.amount
    end
  end

end