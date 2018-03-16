Given /the following movies exist/ do |movies|
  movies.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Then /^the director of "(.*)" should be "(.*)"$/ do |title, director|
  movie = Movie.find_by_title(title)
  expect(movie.director).to eq director
end
