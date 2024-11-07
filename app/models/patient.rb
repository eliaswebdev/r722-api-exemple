# == Schema Information
#
# Table name: patients
#
#  id         :integer          not null, primary key
#  birthdate  :date
#  cpf        :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Patient < ApplicationRecord
  has_one_attached :doc
end
