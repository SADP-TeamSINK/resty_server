class API < Grape::API
  format :json
  formatter :json, Grape::Formatter::Rabl
  default_format :json

end
