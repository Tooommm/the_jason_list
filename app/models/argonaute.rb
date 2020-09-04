class Argonaute < ApplicationRecord

  scope :gods, -> { where("half_god = true") }
  scope :humans, -> { where("half_god = false") }
  scope :captains, -> { where("captain = true") }
end
