class Product < ApplicationRecord
    validates_presence_of :title, :ingredients, :price
    validates :price, presence: true, numericality: {only_integer: true, greater_than: 0}
    belongs_to :category
end