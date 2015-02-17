require 'holidapi'
require 'sinatra'

class HolidayApp < Sinatra::Base
	get '/' do
		@holidays = HolidApi.get(country: 'us', year: 1991, month: 6)
		@currents = HolidApi.get(country: 'us', year: Time.now.year, month: Time.now.month)
		erb :index1
	end
end