class Link < Post
  
  has_many :comments, :as => :commentable
  
  validates_presence_of :permalink
  
  def link_text
    header || permalink
  end
  
  def to_param
    attributes['id'].to_s
  end
end