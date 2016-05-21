require 'bundler'
require 'rest-client'
require 'json'

Bundler.require
require_relative './models/final_project_backend.rb'

 


class MyApp < Sinatra::Base
  get '/' do
    #@patterns = ["http://www.hawthornethreads.com/images/camelot_cottons/300/jacqueline_savage_mcfee_paisley_please_preppy_harlequin_in_navy.jpg", "http://3.bp.blogspot.com/-2xrloB1ddhQ/Ud6_VZjhXJI/AAAAAAAAAH8/lnMuybGDc2Y/s1600/GetNautiWallpaper.jpg", "http://rlv.zcache.com/navy_blue_greek_key_pattern_napkins-rde07851f78eb439fb18b805217920d47_2cf00_8byvr_512.jpg"]
    @hours = []
    erb :index
  end

  post '/results' do
    puts params[:hours]

    redirect('/monogram')
    erb :index
  end

  post '/monogram' do
    #@new_search = Search.new(params[:zipcode])
    @search = Search.new('http://api.target.com/v2/location/geocode?place=900%20Nicollet%20Mall&limit=5&locale=en-US&key=Id8SS1KAXuFd2W7R60XC5AUTTGKbnU2U')

    @search.hour = params[:hours]
    
    erb :monogram
  end

#https://www.googleapis.com/geolocation/v1/geolocate?key=AIzaSyBjiibQPk22AEXfSgHtGA8qNFmOMzT18OI
  #AIzaSyBjiibQPk22AEXfSgHtGA8qNFmOMzT18OI

end