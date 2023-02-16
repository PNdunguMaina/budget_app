class Group < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :group_payments, dependent: :destroy
  has_many :payments, through: :group_payments, dependent: :destroy

  validates :name, presence: true, length: { in: 1..250 }
  validates :icon, presence: true
end
