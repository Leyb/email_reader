class Aviator  < ActiveRecord::Base

  def save_content!(email_id)
    gmail = GmailApi.new
    text = gmail.get_email_texts(email_id)
    body = gmail.get_email_body(email_id)
    update_attributes texts: text, body: body
  end

end