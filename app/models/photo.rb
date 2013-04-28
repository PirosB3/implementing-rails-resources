class Photo < ActiveRecord::Base
  belongs_to :user
  attr_accessible :title, :url

  # URL validation in Rails: http://www.intridea.com/blog/2009/2/18/quick-tip-url-validation-in-rails
  validates_format_of :url, :with => URI::regexp(%w(http https))
end
