module FollowingsHelper
  def render_follows(_user)
    (return if current_user.id == @user.id)
    if current_user.followed.any? { |person| person.followedId == @user.id }
      link_to(unfollow_path(@user), method: :delete, class: 'font-unfollow-icon') do
        link_to icon('minus-circle', id: 'my-icon')
      end
    else
      link_to(follow_path(@user), class: 'font-follow-icon') do
        link_to icon('plus-circle', id: 'my-icon')
      end
    end
  end
end