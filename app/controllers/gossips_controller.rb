class GossipsController < ApplicationController
  def new
    @gossip = Gossip.new
  end

  def index
    @gossip = Gossip.all
  end

  def create
    @gossip = Gossip.create(title: params[:title], content: params[:content])
    if @gossip.save
      puts "yes it saved"
      redirect_to gossips_path
    else
      puts "no"
      render new
    end
  end

  def edit
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def destroy
  end

end
