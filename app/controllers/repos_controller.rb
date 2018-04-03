class ReposController < ApplicationController

def index
  response = HTTParty.get('https://api.github.com/users')
  @response = response

  print response
end

end
