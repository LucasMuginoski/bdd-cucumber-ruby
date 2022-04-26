require "httparty"

module Helpers
    def remove_user(email)
        HTTParty.get("http://parodify.herokuapp.com/helpers?email=#{email}")

    end
end