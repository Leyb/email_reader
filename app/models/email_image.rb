class EmailImage
  belongs_to :email, polymorphic: true
  #polymorphic relations
  belongs_to :aviator, foreign_type: 'Aviator', foreign_key: 'obj_id'

end