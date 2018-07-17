class EmailImage
  belongs_to :email, polymorphic: true
  #polymorphic relations
  belongs_to :aviator, foreign_type: 'Aviator', foreign_key: 'obj_id'


  def self.scan_for_images(html)
  #   look for src, type of images(.jpg, .gif, ...)
  # maybe use nokogiri?
  end
end