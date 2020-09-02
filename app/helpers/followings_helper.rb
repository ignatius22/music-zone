module FollowingsHelper
  def render_follows(follower)
    if current_user.followed.any? { |person| person.followedId == follower.follower.id }
      link_to unfollow_path(follower.follower), method: :delete, class: 'follow-icons' do
        '<i class="fas fa-minus-circle "></i>'.html_safe
      end
    else
      link_to follow_path(follower.follower), class: 'follow-icons' do
        '<i class="fas fa-plus-circle "></i>'.html_safe
      end
    end
  end

  def follow_img(follower)
    image_tag(follower.follower.Photo.thumb.url) unless follower.follower[:Photo].nil?
    gravatar_for(follower.follower, size: 50)
  end

  def followed(_follower)
    return if current_user.id == @user.id

    if current_user.followed.any? { |person| person.followedId == @user.id }
      link_to unfollow_path(@user), method: :delete, class: 'font-unfollow-icon' do
        '<i class="fas fa-minus-circle "></i>'.html_safe
      end
    else
      link_to follow_path(@user), class: 'font-follow-icon' do
        '<i class="fas fa-plus-circle "></i>'.html_safe
      end
    end
  end
end
