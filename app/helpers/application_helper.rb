module ApplicationHelper

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def wicked_pdf_image_tag_for_public(img, options={})
    if img[0] == "/"        
      new_image = img.slice(1..-1)
      image_tag "file://#{Rails.root.join('public', new_image)}", options
    else        
      image_tag img
    end
  end 

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


end
