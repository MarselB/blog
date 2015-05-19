#In the terminal run:bundle
#Now we can generate the code for handling uploads. In the terminal run:
#
#rails generate uploader Picture
#Please start the rails server now.
#
#Note: Some people might be using a second terminal to run the rails server continuously. If so you need to restart the Rails server process now. This is needed for the app to load the added library.
#
#Open app/models/idea.rb and under the line
#
#class Idea < ActiveRecord::Base
#add
#
#mount_uploader :picture, PictureUploader
class Post < ActiveRecord::Base
#TOLE:::::
mount_uploader :picture, PictureUploader
#
	validates :title, presence: true, length: { minimum:5 }
	validates :body, presence: true
end

