class Article < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }

    def title_length
        title.length
    end
    
    def self.controller
        ArticlesController
    end
end
