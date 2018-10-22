class BypassInvent < ApplicationRecord
  belongs_to :bypass_product, foreign_key: :product_id
end
