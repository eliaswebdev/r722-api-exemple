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
class PatientSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id,
             :birthdate,
             :cpf,
             :name,
             :created_at,
             :updated_at,
             :doc

  def doc
    return unless object.doc.attached?

    # rails_blob_path(object.doc, disposition: "attachment", only_path: true)
    # object.doc.url
    Rails.application.routes.url_helpers.url_for(object.doc) if object.doc.attached?
  end
end
