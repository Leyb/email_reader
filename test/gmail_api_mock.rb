GmailApi.class_eval do
  def get_message
    File.read('aviator_example.html')
  end
end
