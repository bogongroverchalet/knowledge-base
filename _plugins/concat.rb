module Jekyll
  module ConcatArrays

    # copied from https://github.com/Shopify/liquid/blob/v4.0.0.rc3/lib/liquid/standardfilters.rb
    def concat(_input, _array)
      input = if _input.is_a?(Array) then _input else [ _input ] end
      array = if _array.is_a?(Array) then _array else [ _array ] end
      input.concat(array).compact
    end
  end
end

Liquid::Template.register_filter(Jekyll::ConcatArrays)
