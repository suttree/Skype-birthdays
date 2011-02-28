Omnisocial.setup do |config|

  # ==> Twitter
  # config.twitter 'APP_KEY', 'APP_SECRET'

  # ==> Facebook
  # config.facebook 'APP_KEY', 'APP_SECRET', :scope => 'publish_stream'

  if Rails.env.production?

    # Configs for production mode go here
    config.facebook 'ad49c397eebb9581b3f0a189792ac486', '71d1b7dfd4c607b314fec33a91833c95', :scope => ['publish_stream', 'friends_birthday']

  elsif Rails.env.development?

    # Configs for development mode go here
    config.facebook 'ad49c397eebb9581b3f0a189792ac486', '71d1b7dfd4c607b314fec33a91833c95', :scope => ['publish_stream', 'friends_birthday']

  end

end
