class Reservation < ActiveRecord::Base
	belongs_to :restaurant
	belongs_to :user

	validate :in_the_future

	validates :spot, presence: true
	validates :size, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 2, less_than_or_equal_to: 20 }

	private
	def in_the_future
    if spot < (DateTime.now - 1)
      errors.add(:spot, "We haven't invented time travel yet!")
    end
	end
end