class Contact < ApplicationRecord

  belongs_to :kind
  has_one :address
  has_many :phones

  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :phones, reject_if: :all_blank, allow_destroy: true

  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "- Apenas letras são permitidas" }, length: { maximum: 50 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "- Apenas E-mails são permitidos" } 

end
