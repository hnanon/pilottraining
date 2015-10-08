class PagesController < ApplicationController
  layout "landing", only: :home
  skip_before_filter :require_login

  def home
  end
end
