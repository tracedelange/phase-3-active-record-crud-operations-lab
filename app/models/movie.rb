class Movie < ActiveRecord::Base

    def self.create_with_title(title)
        Movie.create(title: title)
    end


    def self.first_movie
        Movie.all[0]
    end

    def self.last_movie
        Movie.all[Movie.all.length - 1]
    end

    def self.movie_count
        Movie.all.length
    end

    def self.find_movie_with_id(id)
        Movie.where(id: id)
    end
end