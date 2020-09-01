module UsersHelper
	def render_user(user)
	  unless user[:Photo].nil? 
	  	image_tag(user.Photo.thumb.url, class: 'photo')
	  else
	    image_tag(opinion.Author.Photo.thumb.url)
	    gravatar_for(user, size: 50)
	end
	end
end