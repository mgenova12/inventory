module BypassInventoriesHelper

  def bypass_tuesday_quantity_needed(invent)
    if invent.bypass_product.case_quantity
      case_amount = invent.bypass_product.tuesday_max.to_i - invent.amount
      case_result = (case_amount.to_f / invent.bypass_product.case_quantity.to_f).ceil
      case_result > 0 ? "#{case_result} CASE" : "#{0} CASE"
    elsif invent.bypass_product.measurement == '%'
      percent = (invent.amount * 0.01)
      percent <= 0.25 ? "#{1} CASE" : "#{0} CASE"
    else 
      result = (invent.bypass_product.tuesday_max.to_i - invent.amount)
      result > 0 ? "#{result} #{invent.bypass_product.measurement}" : "#{0} #{invent.bypass_product.measurement}"
    end
  end

  def bypass_thursday_quantity_needed(invent)
    if invent.bypass_product.case_quantity
      case_amount = invent.bypass_product.thursday_max.to_i - invent.amount
      case_result = (case_amount.to_f / invent.bypass_product.case_quantity.to_f).ceil
      case_result > 0 ? "#{case_result} CASE" : "#{0} CASE"
    elsif invent.bypass_product.measurement == '%'
      "#{0} CASE"
    else 
      result = (invent.bypass_product.thursday_max.to_i - invent.amount)
      result > 0 ? "#{result} #{invent.bypass_product.measurement}" : "#{0} #{invent.bypass_product.measurement}"
    end
  end

  def bypass_add_percent(invent)
    if invent.bypass_product.measurement == '%'
      number_to_percentage(invent.amount, precision: 0)
    else 
      invent.amount
    end
  end

end