class Property < ActiveRecord::Base
  monetize :current_rent_pennies, as: "current_rent" 
  monetize :initial_cost_pennies, as: "initial_cost"

  validates :postcode, presence: true
  validates :description, presence: true
  validates :current_rent, presence: true
  validates :initial_cost, presence: true
  validates :telephone, presence: true
  validates :email, presence: true
  validate :current_rent_not_negative, :initial_cost_not_negative

  # Using devise or similar, assign the property to a party
  # has_one :tenant
  # belongs_to :landlord

  def current_rent_not_negative
    if current_rent < 0 
      errors.add(:current_rent, "Can not be negative!")
    end
  end

  def initial_cost_not_negative
    if initial_cost < 0 
      errors.add(:initial_cost, "Can not be negative!")
    end
  end
end
