class CambridgeInvent < ApplicationRecord
  belongs_to :cambridge_product, foreign_key: :product_id
end
