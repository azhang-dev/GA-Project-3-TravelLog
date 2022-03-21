Knock.setup do |config|

  config.token_lifetime = 1.day
  config.token_signature_algorithm = 'HS256'
  config.token_secret_signature_key = -> { Rails.application.secrets.secret_key_base }
  config.not_found_exception_class_name = 'ActiveRecord::RecordNotFound'

  ## Expiration claim
  ## ----------------
  ##
  ## How long before a token is expired. If nil is provided, token will
  ## last forever.
  ##
  ## Default:
  # config.token_lifetime = 1.day


  ## Audience claim
  ## --------------
  ##
  ## Configure the audience claim to identify the recipients that the token
  ## is intended for.
  ##
  ## Default:
  # config.token_audience = nil

  ## If using Auth0, uncomment the line below
  # config.token_audience = -> { Rails.application.secrets.auth0_client_id }

  ## Signature algorithm
  ## -------------------
  ##
  ## Configure the algorithm used to encode the token
  ##
  ## Default:
  # config.token_signature_algorithm = 'HS256'

  ## Signature key
  ## -------------
  ##
  ## Configure the key used to sign tokens.
  ##
  ## Default:
  config.token_secret_signature_key = -> { "f3b0b8436b7ee36ad89b6e9e822087cedaca46c3ef57147d360238a71edfd5f9ae034f8dad6b90f3ce54bdec8609f84e8e4c6677a950e36108ca957c7328fd83" }

  ## If using Auth0, uncomment the line below
  # config.token_secret_signature_key = -> { JWT.base64url_decode Rails.application.secrets.auth0_client_secret }

  ## Public key
  ## ----------
  ##
  ## Configure the public key used to decode tokens, if required.
  ##
  ## Default:
  # config.token_public_key = nil

  ## Exception Class
  ## ---------------
  ##
  ## Configure the exception to be used when user cannot be found.
  ##
  ## Default:
  # config.not_found_exception_class_name = 'ActiveRecord::RecordNotFound'
end
