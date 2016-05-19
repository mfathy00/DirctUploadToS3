class Painting < ActiveRecord::Base
  before_create :default_name

  def default_name
    self.name ||= File.basename(image_url, '.*').titleize if image_url
  end
end
