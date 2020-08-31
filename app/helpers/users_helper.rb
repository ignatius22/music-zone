module UsersHelper
   def render_followers
     if opinions.Author[:Photo].nil?
         gravatar_for opinion.Author, size: 50
      else
        image_tag opinion.Author.Photo.thumb.url
      end
   end
end