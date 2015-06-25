module DotaBot
  class SlackAPI
    BASE_URI = 'http://api.steampowered.com/IDOTA2Match_570'

    include Singleton

    attr_accessor :webhook, :token


    def initialize
      config = YAML.load_file('config/slack.yml')
      self.webhook = config['webhook']
      self.token   = config['token']
    end

    def post(args={})
      perform_request(args)
    end


  private
    def perform_request(payload={})
      uri     = URI.parse "https://hooks.slack.com/services/#{webhook}"

      request = Net::HTTP::Get.new(uri.path)
      request.set_form_data({ payload: payload.to_json, token: token })

      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true

      path = uri.path
      data = request.body

      print "  [SLACK]  #{uri}\n"
      print "  [REQUEST BODY] #{request.body} \n"

      require 'net/http'
      postData = Net::HTTP.post_form(uri, {'payload'=> payload.to_json})
      puts postData.body

      http.post(uri, data)
    end
  end
end
