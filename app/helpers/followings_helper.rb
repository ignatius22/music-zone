module FollowingsHelper
  def render_follows(follower)
    if current_user.followed.any? { |person| person.followedId == follower.follower.id }
        link_to unfollow_path(follower.follower), method: :delete, class: "follow-icons" do
          '<i class="fas fa-minus-circle "></i>'.html_safe
        end
      else
       link_to follow_path(follower.follower), class: "follow-icons" do
          '<i class="fas fa-plus-circle "></i>'.html_safe
        end
      end
  end

def follow_img(follower)
  unless follower.follower[:Photo].nil?
    image_tag( follower.follower.Photo.thumb.url)
  end
  gravatar_for(follower.follower, size: 50)
end
end