module UsersHelper
  def render_user(user)
    if user[:Photo].nil?
      image_tag(opinion.Author.Photo.thumb.url)
      gravatar_for(user, size: 50)
    else
      image_tag(user.Photo.thumb.url, class: 'photo')
    end
  end

  def user_img(_user)
    if @user[:Photo].nil?
      image_tag(@opinion.Author.Photo.thumb.url)
      gravatar_for(@user, size: 100)
    else
      image_tag(@user.Photo.medium.url, class: 'rounded-circle ml-3 mr-3')
    end
  end

  def same_user(_user)
    if current_user[:Photo].nil?
      gravatar_for(current_user, size: 50)
    else
      image_tag(current_user.Photo.thumb.url)
    end
  end

  def hero(_user)
    if @user[:CoverImage].nil?
      '<img src="https://via.placeholder.com/150" alt="">'.html_safe
    else
      image_tag(@user.CoverImage.standard.url, class: 'photo-hero shadow-lg p-3')
    end
  end
end
