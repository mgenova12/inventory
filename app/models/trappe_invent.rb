class TrappeInvent < ApplicationRecord
  belongs_to :trappe_product, foreign_key: :product_id

end
