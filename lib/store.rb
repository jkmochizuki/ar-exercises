class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_carry_one_apparel_type
  before_destroy :ensure_non_empty_store?

  private

  def must_carry_one_apparel_type
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "is absent. Stores must carry at least one of the men's or women's apparel")
      errors.add(:womens_apparel, "is absent. Stores must carry at least one of the men's or women's apparel")
    end
  end

  def ensure_non_empty_store?
    if employees.any?
      throw :abort
    end
  end
end
