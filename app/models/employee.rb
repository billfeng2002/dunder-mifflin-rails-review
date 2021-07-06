class Employee < ApplicationRecord
    belongs_to :dog
    validates :title, presence: true, uniqueness: { message: "needs to be unique" }
    validates :alias, presence: true, uniqueness: { message: "needs to be unique" }

    def to_s
        self.first_name + " " + self.last_name
    end
end
