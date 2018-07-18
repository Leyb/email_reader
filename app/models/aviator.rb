class Aviator  < ActiveRecord::Base

  has_many :email_images, as: :emailable

  after_create :save_images

  # should this be on a delayed job?
  def save_images
    arr_of_images = EmailImage.scan_for_images(body)
    arr_of_images.each do |image|
      EmailImage.create!  image_link: image,
                          obj_type: :Aviator,
                          obj_id: id
    end
  end

  # def get_email_content(email_id)
  #   GmailApi.get_message(email_id)
  # end
  #
  # # aviator = Aviator.new
  # # aviator.update_content(11111)
  # def get_content(email_id)
  #   content = get_email_content(email_id)
  #   update(content: content)
  # end
  #
  #
  # def read_email(html)
  #   html = File.read('aviator_example.html') #used for example since I couldnt connect to actual API
  #   doc = Nokogiri::HTML( html )
  #   debugger
  #   doc.search('p').map(&:text)
  # end

  def save_content!(email_id)
    gmail = GmailApi.new
    text = gmail.get_email_texts(email_id)
    body = gmail.get_email_body(email_id)
    update_attributes texts: text, body: body
  end

end