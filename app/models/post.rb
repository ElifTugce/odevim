class Post < ActiveRecord::Base
  belongs_to :user 
    
  has_attached_file :image, styles: { thumb: "800x800>",mini: "300x300>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/ 
end
