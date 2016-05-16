require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'json'
require_relative 'models/word_formatter'
require_relative 'models/camelcaser'



get '/' do

  erb :home

end



get '/address' do

  content_type(:json)

  postcode = WordFormatter.new('e13 zqf')

  results = {

    address: '3 ARGYLE HOUSE',
    building: 'CODEBASE',
    postcode: postcode.format,
    phone: '0131558030'

  }

  return results.to_json

end



  get '/camelcaser' do

    erb :camelcaser

  end



  get '/camelcaser/*' do

    camelized = CamelCaser.new(params[:splat].to_s).camelize

    return camelized

  end













