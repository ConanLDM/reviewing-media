class MigrateBodytoRichBodyMovies < ActiveRecord::Migration[7.0]
  def up
    Movie.find_each do |movie|
      movie.update(rich_body: movie.body)
    end
  end

  def down
    Movie.find_each do |movie|
      movie.update(body: movie.rich_body)
      movie.update(rich_body: nil)
    end
  end
end
