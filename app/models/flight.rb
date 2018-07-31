# == Schema Information
#
# Table name: flights
#
#  id            :bigint(8)        not null, primary key
#  plane_id      :bigint(8)
#  flight_number :string
#  from          :string
#  to            :string
#  depart_dt     :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Flight < ApplicationRecord
  belongs_to :plane
  has_many :reservations
  has_many :users, through: :reservations
end
