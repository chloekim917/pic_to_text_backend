class Api::V1::NotebooksController < ApplicationController
    def index
        notebooks=Notebook.all
        options = {include: [:user, :note]}
        render json: NotebookSerializer.new(notebooks)
        end

    def show
        notebook=Notebook.find(params[:id])
        options = {include: [:user, :note]}
        render json: NotebookSerializer.new(notebook)
    end

    def create
        notebook = Notebook.new(notebook_params)
        notebook.save!
        options = {include: [:user, :note]}
        render json: NotebookSerializer.new(notebook)
    end

    def destroy
        notebook = Notebook.find(params[:id])
        notebook.destroy!
        options = {include: [:user, :note]}
        render json: NotebookSerializer.new(notebook)
    end

    private

    def note_params
        params.require(:notebook).permit(:user_id, :notebook_name)
    end
end
