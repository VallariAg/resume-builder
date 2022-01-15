module ProfilesHelper
    include HomeHelper

    def get_date_in_month_year_format(date)
        if date.nil?
            return ""
        end
        date.strftime("%b %Y")
    end

    def update_array_attributes_in_params(params)
        params[:career_highlights] = get_array_from_comma_separated_string(params[:career_highlights])
        params[:primary_skills] = get_array_from_comma_separated_string(params[:primary_skills])
        params[:secondary_skills] = get_array_from_comma_separated_string(params[:secondary_skills])
        params
    end
    
    def avatar_url(profile)
        if profile.avatar.attached?
            key = profile.avatar.blob.key
            file = MiniMagick::Image.open(profile.avatar_url)
            save_to_local = file.write  "app/assets/images/#{key}"
            image_path(key)
        else
            image_path("download.png") # default image from the assets
        end
    end

end
