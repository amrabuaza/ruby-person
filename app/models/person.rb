class Person < ApplicationRecord
  self.table_name = 'persons'

  belongs_to :parent, class_name: "Person", optional: true

  has_many :children, class_name: 'Person', foreign_key: 'parent_id', dependent: :destroy
  has_many :grandchildren, through: :children, source: :children, dependent: :destroy

  validates :name, presence: true
end