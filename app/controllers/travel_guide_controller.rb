class TravelGuideController < ApplicationController
  def index
  end

  def search
    countries = find_country(params[:country])
  unless countries
    flash[:alert] = 'Country not found'
    return render action: :index
  end

    @country = countries.first

    # render :json =>  @country
  end

  private
  def request_api(url)
    response = Excon.get(
      url,
      headers: {
        'X-RapidAPI-Host' => URI.parse(url).host,
        'X-RapidAPI-Key' => ENV.fetch('api_key')
      }
    )
    return nil if response.status != 200
    JSON.parse(response.body)
  end
  def find_country(name)
    request_api(
      "https://restcountries-v1.p.rapidapi.com/name/#{URI.encode(name)}"
    )
  end

end
