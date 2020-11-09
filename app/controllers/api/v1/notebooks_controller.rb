class Api::V1::NotebooksController < ApplicationController
    def index
        notebooks=Notebook.all
        render json: notebooks
        end

    def show
        notebook=Notebook.find(params[:id])
        render json: notebooks
    end

    def create
        notebook = Notebook.new(notebook_params)
        notebook.save!
        render json: notebook
    end

    def destroy
        notebook = Notebook.find(params[:id])
        notebook.destroy!
        render json: notebooks
    end

    private

    def notebook_params
        params.require(:notebook).permit(:user_id, :notebook_name)
    end
end
