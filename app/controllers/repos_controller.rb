class ReposController < ApplicationController

def index
  @response = HTTParty.get('https://api.github.com/search/repositories?q=sort=stars&order=desc
')
  JSON.parse(@response.body)
end

end
