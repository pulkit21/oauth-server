class HomeController < ApplicationController

  def index
    render action: 'index', status: 200, formats: [:html]
  end
end
