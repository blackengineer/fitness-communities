class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!
  
  def about
  end

  def home
  end

  def index
  end

  def pricing
  end

  def privacy
  end

  def terms
  end
end
