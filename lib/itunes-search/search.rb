module ItunesSearch
  
  class Search
    attr_accessor :query, :result_hash, :json, :search_type
    alias :original_method_missing :method_missing
    
    def initialize(search_type, query)
      self.search_type = search_type
      self.query = query
    end
    def fetch
      itunes_search_url = "#{ItunesSearch::ENDPOINT}/?#{self.search_type}=#{self.query}"
      puts "itunes_search_url: #{itunes_search_url}"
      self.json = RestClient.get(itunes_search_url)
      puts self.json
      self.json
    end
    def results
      ra = []
      ra = self.to_hash["results"].collect {|r| ItunesSearch::Result.new(r)} unless self.to_hash["results"].empty?
      puts "result"
      puts ra.inspect
      return ra
    end
    
    def to_hash
      self.result_hash ||= JSON.parse(fetch)
    end
    
  end
end