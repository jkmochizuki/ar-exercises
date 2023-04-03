class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store_id, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  before_create :create_random_password

  private
    def create_random_password
      self.password = (0...8).map { (65 + rand(26)).chr }.join
    end
end