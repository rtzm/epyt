get '/issues' do
  @issues = Issue.order(legislative_day: :desc)
  erb :'issues/index'
end

get '/issues/:id' do
  if (@issue = Issue.find(params[:id]))
    erb :'issues/show'
  end
end
