class Comment < ActiveRecord::Base
  attr_accessible :body
  #belong_to :video
  belongs_to :article
end
