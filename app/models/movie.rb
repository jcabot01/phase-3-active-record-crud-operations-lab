class Movie < ActiveRecord::Base
  def self.create_with_title(title) #  set a value,
    Movie.create(title: title) #so we need attribute: attribute relationship
  end

  def self.first_movie # simple return
    Movie.first
  end

  def self.last_movie # simple return
    Movie.last
  end

  def self.movie_count # simple return
    Movie.count
  end

  def self.find_movie_with_id(id) # searching by value
    Movie.find(id)
  end

  def self.find_movie_with_attributes(attribute) # searching by value
    Movie.find_by(attribute)  
  end

  def self.find_movies_after_2002
    Movie.where("release_date > 2002")    
  end

  def update_with_attributes(attribute)
    self.update(attribute)  #instance method, so we move self down into the method
  end

  def self.update_all_titles(title) #assigning new value
    Movie.update(title: title)  #so we need attribute: attribute assignment relationship
  end

  def self.delete_by_id(id) # still a class method, searching by value
    movie = Movie.find(id) # set value we want to delete to a instance variable
    movie.destroy # use ActiveRecord built-in delete method on instance variable
  end

  def self.delete_all_movies #simple class method to delete entire db
    Movie.destroy_all #AR built-in
  end
end