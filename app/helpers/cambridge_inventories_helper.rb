module CambridgeInventoriesHelper

  def cambridge_tuesday_quantity_needed(invent)
    if invent.cambridge_product.case_quantity
      case_amount = invent.cambridge_product.tuesday_max - invent.amount
      case_result = (case_amount.to_f / invent.cambridge_product.case_quantity.to_f).ceil
      case_result > 0 ? "#{case_result} CASE" : "#{0} CASE"
    elsif invent.cambridge_product.measurement == '%'
      percent = (invent.amount * 0.01)
      percent <= 0.25 ? "#{1} CASE" : "#{0} CASE"
    else 
      result = (invent.cambridge_product.tuesday_max - invent.amount)
      result > 0 ? "#{result} #{invent.cambridge_product.measurement}" : "#{0} #{invent.cambridge_product.measurement}"
    end
  end

  def cambridge_thursday_quantity_needed(invent)
    if invent.cambridge_product.case_quantity
      case_amount = invent.cambridge_product.thursday_max - invent.amount
      case_result = (case_amount.to_f / invent.cambridge_product.case_quantity.to_f).ceil
      case_result > 0 ? "#{case_result} CASE" : "#{0} CASE"
    elsif invent.cambridge_product.measurement == '%'
      "#{0} CASE"
    else 
      result = (invent.cambridge_product.thursday_max - invent.amount)
      result > 0 ? "#{result} #{invent.cambridge_product.measurement}" : "#{0} #{invent.cambridge_product.measurement}"
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