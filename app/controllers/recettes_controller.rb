class RecettesController < ApplicationController
  before_action :find_recette, only: [:show, :edit, :update, :destroy]
  def index
    #afficher toutes les recettes envoyées et ce par ordre chronologique d'envoi
    @recette = Recette.all.order("created_at DESC")
  end

  def show
  end

  def new
    @recette = Recette.new
  end

  def create
     @recette = Recette.new(recette_params)
     if @recette.save
      redirect_to @recette, notice:"Votre recette a été ajoutée avec succès"
    else
      render 'new'
    end
  end

  private

  def recette_params
    params.require(:recette).permit(:titre, :description)
  end

  def find_recette
    @recette = Recette.find(params[:id])
  end
end
