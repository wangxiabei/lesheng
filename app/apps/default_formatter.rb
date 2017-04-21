module DefaultFormatter
  def self.call(object, env)
    return object.delete_if{|k,v|k.to_s=="side"}.to_json if object.is_a?(Hash) and (object.has_key?(:swaggerVersion) || object.has_key?(:side))
   # binding.pry
    if object.is_a?(WillPaginate::Collection)
      { 
        status: 1,
        data: object.to_json, 
        page: object.current_page.to_i, 
        total_pages: object.total_pages, 
        per_page: object.per_page
      }.to_json
    else
      { 
        status: 1,
        data: object.as_json
      }.to_json
    end
  end
end
