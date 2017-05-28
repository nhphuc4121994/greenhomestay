class HomeType < ApplicationRecord
    has_many :homes
    self.per_page = 4
end
