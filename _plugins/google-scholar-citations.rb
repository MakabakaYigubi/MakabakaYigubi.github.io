module Jekyll
  # Minimal implementation to satisfy al-folio templates when using remote_theme.
  # The full al-folio plugin scrapes Google Scholar (which may be blocked/rate-limited).
  class GoogleScholarCitationsTag < Liquid::Tag
    def initialize(tag_name, params, tokens)
      super
      @params = params.to_s.strip
    end

    def render(_context)
      "N/A"
    end
  end
end

Liquid::Template.register_tag("google_scholar_citations", Jekyll::GoogleScholarCitationsTag)



