get'/poops/new' do
  # new
  # TODO create this
  if params[:politician] == "local"
    # get politician using google civic data api
    @politician = Politician.new
    @local = true
  else
    @politician = Politician.random_from_party(params[:politician])
  end
  erb :'poops/new'
end

post '/poops' do
  # create
  # make this upon clicking the call button?
  # how do I make this a link as well as a form button?
  @poop = Poop.new(params[:poop])
  if @poop.save
    redirect "/poops/#{@poop.id}/edit"
  else
    # errors
    erb :'poops/new'
  end
end

get '/poops/:id/edit' do
  # edit
  if (@poop = Poop.find(params[:id]))
    erb :'poops/edit'
  else
    # errors
    @errors = @poop.errors.full_messages
    erb :'poops/edit'
  end
end

put '/poops/:id' do
  # update
  # check authorization?
  @poop = Poop.find(params[:id])
  @poop.assign_attributes(params[:poop])
  if @poop.save
    redirect "/poops#{@poop.id}"
  else
    # errors
    erb :'poops/edit'
  end
end
