class Reservation < ApplicationRecord
  
  validates :name, presence: true
  validate :date_before_start
  validate :start_time_not_sunday
  validate :start_time_not_saturday
  validate :time_only
  validates :start_time, uniqueness: { message: 'は他のユーザーが予約しています' }

end
