module UsersHelper
	def render_author_pic(user)
	  if opinion.Author[:Photo].nil?
	     content_tag(gravatar_for opinion.Author, size: 50 )
	  else
	   content_tag(image_tag opinion.Author.Photo.thumb.url)
	  end
	end
end
