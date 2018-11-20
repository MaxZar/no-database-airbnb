require "open-uri"
url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
FLATS = JSON.parse(open(url).read)

class FlatsController < ApplicationController
  before_action :set_flats

  def index
  end

  def show
    @flat = @flats.find { |flat| flat['id'].to_s == params[:id] }
  end

  def set_flats
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    @flats = JSON.parse(open(url).read)
  end
end
