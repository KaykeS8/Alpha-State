module ApplicationHelper
    def login_or_signup(url)
        if url.include?("users/sign_in") || url.include?("users/sign_up")
            true
        end
    end
end
