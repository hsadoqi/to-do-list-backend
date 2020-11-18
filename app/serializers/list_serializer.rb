class ListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  attributes :items do |list|
    ItemSerializer.new(list.items).as_json["data"]
  end 
end
