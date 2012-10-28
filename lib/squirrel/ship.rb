module Squirrel
  def self.ship(options)
    payload = {
      head_long: options.delete(:head_long),
      branch: options.delete(:branch),
      url: options.delete(:url),
      environment: options.delete(:environment),
      user: options.delete(:user)
    }

    HTTParty.post("#{self.api_endpoint}/#{self.api_version}/release", body: payload, headers: {"Authorization" => "Token #{self.api_key}", "Accept" => "application/json"})
  end
end