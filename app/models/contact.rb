class Contact < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    validates :phone, presence: true
    validates :message, presence: true, length: { minimum: 20 }
end
