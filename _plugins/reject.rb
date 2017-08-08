module Jekyll
  module RejectArrays

    def reject(input, property)
      input.reject { |a| a[property].nil? }
    end
  end
end

Liquid::Template.register_filter(Jekyll::RejectArrays)
