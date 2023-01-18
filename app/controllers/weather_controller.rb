class WeatherController < ApplicationController
  # nethttp.rb
  require 'uri'
  require 'net/http'
  def index
    sdafsdf = 32
  end

  def create
    city_name = params[:city_name]
    api = "https://api.openweathermap.org/data/2.5/weather?q=#{city_name}&appid=16a8abdab0d5094d487dcb85522759e7"
    uri = URI(api)
    res = Net::HTTP.get_response(uri)
    if res.is_a?(Net::HTTPSuccess)
      url_status =  res.body
      redirect_to weather_show_path(api_status: url_status)
      asdf =1
    else
      redirect_to weather_show_path(), :notice => "Data not found! Try again"
      asdfasdf = 1
    end
  end

  def show
    if params[:api_status].present?
      _status = JSON.parse(params[:api_status])
      @api_status = {
        :name =>  _status['name'],
        :coord => _status['coord'],
        :weather => _status['weather'],
        :main => _status['main'],
        :visibility => _status['visibility'],
        :wind => _status['wind'],
        :clouds => _status['clouds'],
        :sys => _status['sys'],
        :timezone => _status['timezone']
      }
    end
    asdfasd = 21
  end
end
