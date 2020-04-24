class Survey < ApplicationRecord
  validates :ice_cream, presence: {message: "Choose an ice cream flavour"}
end
