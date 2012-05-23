module ItunesSearch 

  ENDPOINT = "http://itunes.apple.com/search" #"http://ax.phobos.apple.com.edgesuite.net/WebObjects/MZStoreServices.woa/wa/wsSearch"
  
  class Base
    attr_accessor :search_type
    
    def search(search_type, query)
      return ItunesSearch::Search.new(search_type, CGI::escape(query))  
    end  
  end
end