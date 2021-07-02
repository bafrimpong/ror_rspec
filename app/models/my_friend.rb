class MyFriend < ApplicationRecord
    # presence validations
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :street, presence: true
    validates :zip_code, presence: true
    validates :city, presence: true
    validates :email, presence: true
    validates_presence_of :latitude, :longitude
    validates :mobile, presence: true
    
    # numericality validations
    validates_numericality_of :mobile

    # character length validations
    validates_length_of :first_name, :last_name, maximum: 100
    validates_length_of :email, maximum: 45
    validates_length_of :mobile, maximum: 30
end
