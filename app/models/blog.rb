class Blog < ApplicationRecord
    #Associations
    has_many :comments, dependent: :destroy

    #Validations
    validates :title, presence: true
    validates :content, presence: true 
    validates :publisher, presence: true  

end
