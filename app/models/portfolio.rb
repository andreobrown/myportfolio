class Portfolio < ApplicationRecord
    has_many :technologies
    accepts_nested_attributes_for :technologies, 
                                  allow_destroy: true,
                                  reject_if: lambda { |attrs| attrs['name'].blank? }

    validates_presence_of :title

    mount_uploader :thumb_image, PortfolioUploader
    mount_uploader :main_image, PortfolioUploader

    scope :sorted_by_display_position, -> { order("position ASC") }

    scope :with_subtitle_ruby_on_rails, -> { where(subtitle: "Ruby on Rails")}
end
