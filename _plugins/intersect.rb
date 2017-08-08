module Jekyll
  module IntersectArrays

    def intersect(input, source)
      return [] unless input and source
      input & source
    end
  end
end

Liquid::Template.register_filter(Jekyll::IntersectArrays)
