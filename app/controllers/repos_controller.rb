class ReposController < ApplicationController

  def index
    response = HTTParty.get('https://api.github.com/search/repositories?q=stars:>=10000&sort=stars&order=desc')
    parsed_response = JSON.parse(response.body)

    @repos = parsed_response['items']

  end

end
