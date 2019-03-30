class Post < ApplicationRecord
  before_save :unfeature_post, if: :featured?

  has_one_attached :thumbnail
  
  has_many :CategoryPost
  has_many :categories, through: :CategoryPost
  
  belongs_to :user

  private

  def unfeature_post
    featured_post = Post.find_by(featured: true)
    unless featured_post.nil?
      featured_post.update_column(:featured, false)
    end
  end
end

# It's not gonna work today haha so stop trying :-)
# No problemo
# i am getting angry, why?
# I am stupid, brain is not workign. why why why?
# Less sleep and coding for a few hours already, so you will reach a point your brain just don't work anymore
# Let me write down in plain english what's happening above

# Before saving a post, call unfeature_post if the post that's going to be saved is featured
# Find a post that already is featured
# unless that post is nill update that post and set featured to false
# r u there? now i am understanding, my brain is not working properly. 
# i cant even see those code properly, blury. yes, if you give me the permission, i want to leave. and go for bed.
# you are my GURU, so i need permission of you. ha ha ha.
# Talk to you tommmorrowo . 
# Byr
# yess haha maybe you should sleep
# haha why should i give you permission? If you want to sleep you should go man
# haha don't be so crazy man
# Have a good night and sleep well! chiao
# what? chiao???