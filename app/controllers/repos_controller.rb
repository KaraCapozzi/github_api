class ReposController < ApplicationController

  def index
    response = HTTParty.get('https://api.github.com/search/repositories?q=stars:>=10000&sort=stars&order=desc:closed&per_page=100')
    parsed_response = JSON.parse(response.body)
    @repos = parsed_response['items']

    # response_contributors = HTTParty.get('https://api.github.com/repos/scala/scala/contributors?q=contributions&order=desc')
    # parsed_response_contributors = JSON.parse(response_contributors.body)
    # @contributors = parsed_response_contributors

  end

end
