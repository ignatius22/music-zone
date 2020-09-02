module LikesHelper
  def like_opinion(opinion)
    if opinion.likes.any? { |like| like.UserId == current_user.id }
      gravatar_for(opinion.Author, size: 50)
      link_to unlike_path(opinion), method: :delete, class: 'user-1' do
        '<i class="fas fa-heart text-danger"></i>'.html_safe
      end
    else
      link_to like_path(opinion), class: 'user-2' do
        '<i class="fas fa-heart"></i>'.html_safe
      end
    end
    content_tag(:p, pluralize(opinion.likes.size, 'like')) if opinion.likes.any?
  end
end
