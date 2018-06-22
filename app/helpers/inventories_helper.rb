module InventoriesHelper

  def tuesday_quantity_needed(invent)
    percent = invent.amount * 0.01
    
    if invent.product.case_quantity
      case_amount = invent.product.thursday_max - invent.amount
      case_amount / invent.product.case_quantity
    elsif invent.product.measurement == '%'
      if percent <= 0.25
        1
      else 
        0
      end
    else 
      invent.product.tuesday_max - invent.amount
    end
    
  end

  def thursday_quantity_needed(invent)
    if invent.product.case_quantity
      case_amount = invent.product.thursday_max - invent.amount
      case_amount / invent.product.case_quantity
    elsif invent.product.measurement == '%'
      0
    else 
      invent.product.thursday_max - invent.amount
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
