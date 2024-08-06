require 'active_model'

class Arrival
  include ActiveModel::Validations

  attr_accessor :scheduled_time, :actual_time, :line, :platform,
  :direction, :destination

  validates_presence_of :line, :platform
  validates :scheduled_time, format: { with: /\A\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}Z\z/ }
  validates :actual_time, numericality: { only_integer: true }

  def initialize(attributes = {})
    @scheduled_time = attributes[:scheduled_time]
    @actual_time = attributes[:actual_time]
    @line = attributes[:line]
    @platform = attributes[:platform]
    @direction = attributes[:direction]
    @destination = attributes[:destination]
  end
end
