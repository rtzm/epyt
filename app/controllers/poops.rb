get "/issues/:issue_id/politicians/:politician_id/poops" do
  # TODO: show all poop calls for this politician about this issue
end

get'/issues/:issue_id/politicians/:politician_id/poops/new' do
  # new
  @issue = Issue.find(params[:issue_id])
  @politician = Politician.find(params[:politician_id])
  erb :'poops/new'
end

post '/issues/:issue_id/politicians/:politician_id/poops' do
  # create
  @issue = Issue.find(params[:issue_id])
  @politician = Politician.find(params[:politician_id])
  @poop = Poop.new(politician: @politician, issue: @issue)
  if @poop.save
    if request.xhr?
      erb :_followup_form, layout: false
    else
      # redirect to issue page for them to make another call
      redirect "/issues/#{@issue.id}"
    end
  else
    if request.xhr?
      @poop.errors.full_messages
    else
      @errors = @poop.errors.full_messages
      erb :'poops/new'
    end
  end
end

get '/issues/:issue_id/politicians/:politician_id/poops/:id/edit' do
  # edit
  if (@poop = Poop.find(params[:id]))
    erb :'poops/edit'
  else
    # errors
    @errors = @poop.errors.full_messages
    erb :'poops/edit'
  end
end

put '/issues/:issue_id/politicians/:politician_id/poops/:id' do
  # update
  @poop = Poop.find(params[:id])
  @poop.assign_attributes(params[:poop])
  if @poop.save
    redirect "/poops#{@poop.id}"
  else
    # errors
    erb :'poops/edit'
  end
end
