get "/issues/:issue_id/politicians" do
  # show all polticians getting poopcalls about this issue
end

get "/issues/:issue_id/politicians/local" do
  # get my local politician with Google Civic API
  # get politician using google civic data api
  @politician = Politician.new
end

get "/issues/:issue_id/politicians/dem" do
  # get random democrat
  politician = Politician.random_from_party("D")
  redirect "/issues/#{params[:issue_id]}/politicians/#{politician.id}/poops/new"
end

get "/issues/:issue_id/politicians/rep" do
  # get random republican
  politician = Politician.random_from_party("R")
  redirect "/issues/#{params[:issue_id]}/politicians/#{politician.id}/poops/new"
end

get "/issues/:issue_id/politicians/:politician_id" do
  # show page for this politician getting poopcalls, and a share button
  @politician = Politician.find(params[:politician_id])
  erb :"politicians/show"
end
