class Blog < ApplicationRecord
    #has_many :comments
    validates :title, presence: true
    validates :content, presence: true 
    validates :publisher, presence: true  
end
