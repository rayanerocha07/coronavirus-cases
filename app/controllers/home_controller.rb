class HomeController < ApplicationController
  protect_from_forgery with: :null_session
  def index
    @data = CoronaDatum.pluck(:country, :confirmed_cases)
  end

  def receive_data
    data = request.body.read
    if data.present?
      data = JSON.parse(data)
      data['Countries'].each do |hash| CoronaDatum.find_by(country: hash['Country']);update(confirmed_cases: hash['Total confirmed'])
      render :json => {:status => 200}
    else
      render :json => {:status => 404}
    end
  end
end
