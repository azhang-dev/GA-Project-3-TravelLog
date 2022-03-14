class ApplicationController < ActionController::Base
    # skip_before_action :verify_authenticity_token
    # include Knock::Authenticable
    def secret_key
        "SecretKey" # to ask Luke
    end

    def encode_token(payload)
        JWT.encode(payload, secret_key, 'HS256')
    end

    def decode(token)
        JWT.decode(token,"SecretKey", true, {algorithm: "HS256"})[0]
    end
end
