class API

    BASE_URL = 'https://www.potterapi.com/v1/houses?key='
    KEY = ENV['API_KEY']
    
    def self.get_houses
        uri = URI.parse(BASE_URL + KEY)
        response = Net::HTTP.get_response(uri)
        data = JSON.parse(response.body)
        data
    end
end

