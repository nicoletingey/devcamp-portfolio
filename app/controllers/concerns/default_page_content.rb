module DefaultPageContent
  extend ActiveSupport::Concern
  included do
    before_filter :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Nicole Tingey | My Portfolio"
    @seo_keywords = "Nicole Tingey Portfolio"
  end
end