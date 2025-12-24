module Jekyll
  # Minimal implementation to satisfy al-folio templates when using remote_theme.
  # The full al-folio plugin fetches citation counts from INSPIRE-HEP.
  class InspireHEPCitationsTag < Liquid::Tag
    def initialize(tag_name, params, tokens)
      super
      @recid = params.to_s.strip
    end

    def render(_context)
      # Return a stable placeholder to avoid network calls during build.
      # Replace with a real implementation if you need citation counts.
      "N/A"
    end
  end
end

Liquid::Template.register_tag("inspirehep_citations", Jekyll::InspireHEPCitationsTag)



