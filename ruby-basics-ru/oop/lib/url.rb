# frozen_string_literal: true

# BEGIN
require 'uri'
require 'forwardable'

class Url
  extend Forwardable
  include Comparable
  def initialize(url)
    @uri = URI(url)
  end

  def query_params()
    query_string = @uri.query || ''
    query_array = query_string.split('&');
    result = {}
    query_array.each do |item|
	  pairarr = item.split('=');
	  result[pairarr[0].to_sym] = pairarr[1]
    end
    result
  end
  
  def query_param(*args)
    query_string = @uri.query || ''
    query_array = query_string.split('&');
    result = {}
    query_array.each do |item|
	  pairarr = item.split('=');
	  result[pairarr[0].to_sym] = pairarr[1]
    end
    if(args.length == 0)
	  result
	elsif(args.length == 1)
	  result[args[0]]
	elsif(args.length == 2)
	  if(result.key? args[0])
	    result[args[0]]
	  else
		args[1]
	  end
    end
  end 
  
  def ==(other)
	query_params.sort.to_h == other.query_params.sort.to_h && scheme == other.scheme && host == other.host && port == other.port
  end	
  def_delegators :@uri, :scheme, :host, :port
end
# END
