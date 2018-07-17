class Aviator

  has_many :email_image

  after_create :save_images

  def get_email_content(email_id)
    GmailApi.get_message(email_id)
  end

  # aviator = Aviator.new
  # aviator.update_content(11111)
  def update_content(email_id)
    content = get_email_content(email_id)
    update(content: content)
  end

  # should this be on a delayed job?
  def save_images
    arr_of_images = EmailImage.scan_for_images(content)
    arr_of_images.each do |image|
      EmailImage.create image_link: image,
                        obj_type: :Aviator,
                        obj_id: id
    end
  end
end