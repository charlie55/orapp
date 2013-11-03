json.array!(@analyst_scores) do |analyst_score|
  json.extract! analyst_score, :name, :score
  json.url analyst_score_url(analyst_score, format: :json)
end
