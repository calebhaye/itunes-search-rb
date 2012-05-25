module ItunesSearch 

  ENDPOINT = "http://itunes.apple.com" #"http://ax.phobos.apple.com.edgesuite.net/WebObjects/MZStoreServices.woa/wa/wsSearch"
  
  class Base
    attr_accessor :search_type
    
    # @media - movie, podcast, music, musicVideo, audiobook, shortFilm, tvShow, software, ebook, all

    # The following entities are available for each media type:
    # movie:   movieArtist, movie
    # podcast:   podcastAuthor, podcast
    # music:   musicArtist, musicTrack, album, musicVideo, mix, song
    # Please note that "musicTrack" can include both songs and music videos in the results
    # musicVideo:  musicArtist, musicVideo
    # audiobook:   audiobookAuthor, audiobook
    # shortFilm:   shortFilmArtist, shortFilm
    # tvShow:  tvEpisode, tvSeason
    # software:  software, iPadSoftware, macSoftware
    # ebook:   ebook
    # all:   movie, album, allArtist, podcast, musicVideo, mix, audiobook, tvSeason, allTrack
    def search(search_type, query, media="all", entity="allTrack", limit=50)
      return ItunesSearch::Search.new(search_type, CGI::escape(query), media, entity, limit)  
    end  
    def lookup(search_type, id, media="all", entity="song", limit=50)
      return ItunesSearch::Lookup.new(search_type, CGI::escape(id), media, entity, limit)  
    end  
  end
end