class HomeController < ApplicationController

  def index
  end

  def splash_page
    @disable_nav = true
    render layout: 'splash_page'
  end

end
