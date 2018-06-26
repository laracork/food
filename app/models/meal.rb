class Meal < ApplicationRecord
  validates :main, :side, presence: :true
end
