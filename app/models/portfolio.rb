class Portfolio < ApplicationRecord
    has_many :technologies
    accepts_nested_attributes_for :technologies, 
                                   reject_if: lambda { |attrs| attrs['name'].blank? }

    include Placeholder
    validates_presence_of :title, :body, :subtitle, :image, :thumb_image

    def self.PHP
        where(subtitle: 'PHP')
    end

    scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby On Rails') }

    after_initialize :set_defaults 

    def set_defaults
        self.image ||= Placeholder.image_generator(h: '600', w:'400')
        self.thumb_image ||= "https://via.placeholder.com/350x150"
    end
end
