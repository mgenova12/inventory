class Product < ApplicationRecord
  # validates :case_quantity, numericality: { other_than: 0 }

  validate :non_zero

  def non_zero
    if self.case_quantity == 0
      self.errors.add(:case_quantity, "Field can't be zero")
    end
  end

end
