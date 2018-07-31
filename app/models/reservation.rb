# == Schema Information
#
# Table name: reservations
#
#  id          :bigint(8)        not null, primary key
#  flight_id   :bigint(8)
#  user_id     :bigint(8)
#  seat_number :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Reservation < ApplicationRecord
  belongs_to :flight
  belongs_to :user
end
