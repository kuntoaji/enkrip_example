class Post < ApplicationRecord
  include Enkrip::Model

  enkrip_configure do |config|
    config.string_attributes << :my_string
    config.numeric_attributes << :my_numeric
  end

  validates :my_numeric, numericality: { greater_than: 0 }
  validates :my_string, presence: true
end
