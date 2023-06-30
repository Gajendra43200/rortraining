class ClientsController < ApplicationController
  def new
    @clientt = Client.new
  end
  def index 
    @clients= Client.all 
  end
  def create  
    @client = Client.new(data)
    if @client.save
      redirect_to action: :index
    end
  end
  def show#show single client
    @client = Client.find(params[:id]) 
  end
  def edit
    @client = Client.find(params[:id])
  end
  def update
    @client=Client.find(params[:id])
    if @client.update(data)
      redirect_to action: :index
    end
  end

  def destroy
    @client=Client.find(params[:id])
    @client.destroy
    redirect_to action: :index
  end
  private
  def data
    params.require(:client).permit(:name,:last_name) 
  end


end
