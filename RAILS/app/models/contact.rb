class Contact < ApplicationRecord
  belongs_to :kind
  has_one :address, dependent: :destroy
  has_many :phones, dependent: :delete_all

  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :phones, reject_if: :all_blank, allow_destroy: true
  #params = {contact: {name: "Jack", email: "jack@jack.com", rmk: "obs", address_attributes: {street: "rua", city: "cidade", state: "Estado"}}
  #Contact.create!(params[:contact])
end
