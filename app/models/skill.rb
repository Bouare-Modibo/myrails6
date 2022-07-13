class Skill < ApplicationRecord
    
    include Placeholder
    validates_presence_of :title, :percent_u

    after_initialize :set_defaults 

    def set_defaults
        self.badge ||= Placeholder.image_generator(h: '250', w:'250')
    end

end
