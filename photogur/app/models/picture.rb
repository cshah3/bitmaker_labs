class Picture < ActiveRecord::Base
  attr_accessible :artist, :title, :url

  scope :recent, -> { order("updated_at DESC") }
end
