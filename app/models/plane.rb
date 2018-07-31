# == Schema Information
#
# Table name: planes
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  rows       :integer
#  columns    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Plane < ApplicationRecord
  has_many :flights
end
