class Trip < ApplicationRecord
  belongs_to :dog
  belongs_to :dog_house

  validates_presence_of :start_date, :end_date
  validate :correct_dates


  def correct_dates
    if self.start_date && self.end_date && self.start_date >= self.end_date
      errors.add(:start_date, message: "can't be same day or earlier then end date")
    end
  end
end
