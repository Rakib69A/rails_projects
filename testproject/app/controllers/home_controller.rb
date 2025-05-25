class HomeController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def files
    @files = Dir.glob('*')
  end
end
