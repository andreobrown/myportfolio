module DefaultPageContent
    extend ActiveSupport::Concern

    included do
        before_action :set_page_defaults
    end

    def set_page_defaults
        set_title
        set_seo_keywords
    end

    def set_title(title = nil)
        @page_title = "Devcamp Portfolio | #{ title || "My Portfolio Website" }"
    end

    def set_seo_keywords(keywords = nil)
        @seo_keywords = "Andre O. Brown Portfolio AWS Amazon Web Services #{ keywords || '' }"
    end

end