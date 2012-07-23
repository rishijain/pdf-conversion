module HomeHelper

  def get_image_path(name)
    if params[:action] == "to_pdf_images"
      return "#{Rails.root}/app/assets/images/#{name}"
    else
      return name
    end
  end
end
