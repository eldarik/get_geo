require 'get_geo/version'
require 'get_geo/data'
require 'get_geo/printer'
require 'get_geo/printer/cli'
require 'get_geo/data_requester'

module GetGeo
  class Error < StandardError; end

  def self.get_data(ip = nil)
    data = ::GetGeo::DataRequester.execute(ip)
    ::GetGeo::Data.new(data)
  end
end
