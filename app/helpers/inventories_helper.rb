module InventoriesHelper

  def tuesday_quantity_needed(invent)
    if invent.product.case_quantity
      case_amount = invent.product.tuesday_max - invent.amount
      (case_amount.to_f / invent.product.case_quantity.to_f).ceil
    elsif invent.product.measurement == '%'
      percent = (invent.amount * 0.01)
      percent <= 0.25 ? 1 : 0
    else 
      result = (invent.product.tuesday_max - invent.amount)
      result > 0 ? result : 0
    end
  end

  def thursday_quantity_needed(invent)
    if invent.product.case_quantity
      case_amount = invent.product.thursday_max - invent.amount
      (case_amount.to_f / invent.product.case_quantity.to_f).ceil
    elsif invent.product.measurement == '%'
      0
    else 
      result = (invent.product.thursday_max - invent.amount)
      result > 0 ? result : 0
    end
  end

  def add_percent(invent)
    if invent.product.measurement == '%'
      number_to_percentage(invent.amount, precision: 0)
    else 
      invent.amount
    end
  end

end
