module TrappeInventoriesHelper

  def trappe_tuesday_quantity_needed(invent)
    if invent.trappe_product.case_quantity != ""
      case_amount = invent.trappe_product.tuesday_max.to_i - invent.amount
      case_result = (case_amount.to_f / invent.trappe_product.case_quantity.to_f).ceil
      case_result > 0 ? "#{case_result} CASE" : "#{0} CASE"
    elsif invent.trappe_product.measurement == '%'
      percent = (invent.amount * 0.01)
      percent <= 0.25 ? "#{1} CASE" : "#{0} CASE"
    else 
      result = (invent.trappe_product.tuesday_max.to_i - invent.amount)
      result > 0 ? "#{result} #{invent.trappe_product.measurement}" : "#{0} #{invent.trappe_product.measurement}"
    end
  end

  def trappe_thursday_quantity_needed(invent)
    if invent.trappe_product.case_quantity != ""
      case_amount = invent.trappe_product.thursday_max.to_i - invent.amount
      case_result = (case_amount.to_f / invent.trappe_product.case_quantity.to_f).ceil
      case_result > 0 ? "#{case_result} CASE" : "#{0} CASE"
    elsif invent.trappe_product.measurement == '%'
      "#{0} CASE"
    else 
      result = (invent.trappe_product.thursday_max.to_i - invent.amount)
      result > 0 ? "#{result} #{invent.trappe_product.measurement}" : "#{0} #{invent.trappe_product.measurement}"
    end
  end

  def trappe_add_percent(invent)
    if invent.trappe_product.measurement == '%'
      number_to_percentage(invent.amount, precision: 0)
    else 
      invent.amount
    end
  end

end