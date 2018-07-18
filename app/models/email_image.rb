class EmailImage  < ActiveRecord::Base
  belongs_to :emailable, polymorphic: true
  #polymorphic relations
  belongs_to :aviator, foreign_key: 'obj_id', foreign_type: :Aviator


  def self.scan_for_images(html)
  #   look for src, type of images(.jpg, .gif, ...)
    doc = Nokogiri::HTML( html )
    doc.css('img').map{ |i| i['src'] }
  end
end