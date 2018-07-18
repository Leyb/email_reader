class Aviator  < ActiveRecord::Base

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