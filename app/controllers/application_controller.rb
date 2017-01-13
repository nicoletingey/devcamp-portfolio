class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern

  def set_title
    @page_title = "Nicole Tingey | My Portfolio"
  end
end
