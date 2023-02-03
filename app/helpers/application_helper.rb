module ApplicationHelper
  def main_image(object, image_name)
    if object.main_image.attached?
      image_tag object.main_image
    else
      image_tag image_name
    end
  end
end
