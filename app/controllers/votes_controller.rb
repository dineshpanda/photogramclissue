class VotesController < ApplicationController
  before_action :set_vote, only: %i[show edit update destroy]

  def index
    @q = Vote.ransack(params[:q])
    @votes = @q.result(distinct: true).page(params[:page]).per(10)
  end

  def show; end

  def new
    @vote = Vote.new
  end

  def edit; end

  def create
    @vote = Vote.new(vote_params)

    if @vote.save
      redirect_to @vote, notice: "Vote was successfully created."
    else
      render :new
    end
  end

  def update
    if @vote.update(vote_params)
      redirect_to @vote, notice: "Vote was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @vote.destroy
    redirect_to votes_url, notice: "Vote was successfully destroyed."
  end

  private

  def set_vote
    @vote = Vote.find(params[:id])
  end

  def vote_params
    params.require(:vote).permit(:photo_id, :blah)
  end
end
