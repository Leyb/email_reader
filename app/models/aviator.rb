class Aviator

  has_many :email_image

  def get_email_content(email_id)
    GmailApi.get_email(email_id)
  end
end