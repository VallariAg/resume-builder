module UsersHelper

    # Signs up the given user info.
    def sign_up(user)
        new_user = User.new(user)
        new_user.profile = Profile.new
        
        if new_user.save
            new_user.profile.educations.create
        end
    end

end
