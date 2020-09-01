module UsersHelper
 def user_render(users)
	users.each do |user|
	content_tag(:div, class:"who-follow-profile")
	content_tag(:div,class:"picture")
	    link_to user_path(user), class: 'user' do 
	    unless user[:Photo].nil?
	    image_tag(user.Photo.thumb.url, class: 'photo')
	      else
	     gravatar_for(user, size: 50)
	      end
	     content_tag(:h6, user.Fullname)
	    end
	end
	end
end
