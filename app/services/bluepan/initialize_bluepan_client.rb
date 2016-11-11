module Bluepan
  class InitializeBluepanClient

    extend LightService::Action
    promises :client

    executed do |c|
      c.client = BluepanClient.new(
        api_token: Bluepan.api_token,
        api_secret: Bluepan.api_secret,
      )
    end

  end
end
