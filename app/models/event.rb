class Event < ActiveRecord::Base
  has_many :parameters
  accepts_nested_attributes_for :parameters
end
