require 'rails_helper'

describe MoviesController, type: :controller do
    describe "#new" do
    context "When create a movie" do
      it "should create it to database" do
        movie_new = Hash.new
        movie_new["title"] = "MyFavMovie"
        movie_new["rating"] = "PG-13"
        movie_new["release_date"] = Date.new(1997, 4, 2)
        movie_new["director"] = "IamTheDirector"

        post :create, movie: movie_new
        expect(response).to redirect_to("/movies")
      end
    end
  end
end