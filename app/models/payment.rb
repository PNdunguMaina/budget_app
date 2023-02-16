class Payment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :group_payments, dependent: :destroy
  has_many :groups, through: :group_payments, dependent: :destroy

  validates :name, presence: true
  validates :amount, numericality: { greater_than: 0 }
  validates :groups, presence: true
end
