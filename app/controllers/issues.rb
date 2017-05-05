get '/issues' do
  @issues = Issue.order(legislative_day: :desc)
  erb :'issues/index'
end

get '/issues/:issue_id' do
  if (@issue = Issue.find(params[:issue_id]))
    erb :'issues/show'
  end
end
