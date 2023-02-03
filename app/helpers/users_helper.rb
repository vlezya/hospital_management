module UsersHelper
  def main_image(user)
    if user.main_image.attached?
      image_tag user.main_image
    else
      image_tag "placeholder.png"
    end
  end
end
