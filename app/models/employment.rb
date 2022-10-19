class Employment < ApplicationRecord
    validates :employer, :date_started, :date_ended, presence: true
end
