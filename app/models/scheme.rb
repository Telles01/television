class Scheme < ApplicationRecord
validates :name, :address, :rating, presence: true

end
