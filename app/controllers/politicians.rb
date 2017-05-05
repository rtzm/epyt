get "/issues/:issue_id/politicians" do
  # show all polticians getting poopcalls about this issue
  @issue = Issue.find(params[:issue_id])
  erb :"politicians/index"
end

get "/issues/:issue_id/politicians/local" do
  # TODO: get my local politician with Google Civic API
  # get politician using google civic data api
  # pseudocode:
  # get address from user somehow
  # send address and API KEY to API (https://developers.google.com/civic-information/docs/using_api#representativeinfoquery-using-curl)
  # parse response for the chamber that matches this @issue's chamber
  # find politician in db by matching name and info
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
