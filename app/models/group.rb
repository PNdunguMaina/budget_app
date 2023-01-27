class Group < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :group_payments, dependent: :destroy
  has_many :payments, through: :group_payments, dependent: :destroy
end
