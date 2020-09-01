module UsersHelper
	def render_user(user)
	  unless user[:Photo].nil? 
	  	image_tag(user.Photo.thumb.url, class: 'photo')
	  else
	    image_tag(opinion.Author.Photo.thumb.url)
	    gravatar_for(user, size: 50)
	end
	end

	def user_img(user)
	  unless @user[:Photo].nil?
	    image_tag(@user.Photo.medium.url , class: "rounded-circle ml-3 mr-3")
	  else
	    image_tag(@opinion.Author.Photo.thumb.url)
	    gravatar_for(@user, size: 100)
	  end
	end
	
	def same_user(user)
		if current_user[:Photo].nil?
			gravatar_for( current_user, size: 50)
	   else
	   	image_tag( current_user.Photo.thumb.url)
	   end
	end
	    
	def hero(user)
		 unless @user[:CoverImage].nil?
           image_tag( @user.CoverImage.standard.url, class: 'photo-hero shadow-lg p-3')
        else
       '<img src="https://via.placeholder.com/150" alt="">'.html_safe
      end
	end
end