class Api::V1::NotesController < ApplicationController
    def index
        notes=Note.all
        options = {include: [:user, :notebook]}
        render json: NoteSerializer.new(notes)
        end

    def show
        note=Note.find(params[:id])
        options = {include: [:user, :notebook]}
        render json: NoteSerializer.new(note)
    end

    def create
        note = Note.new(note_params)
        note.save!
        options = {include: [:user, :notebook]}
        render json: NoteSerializer.new(note)
    end

    def destroy
        note = Note.find(params[:id])
        note.destroy!
        options = {include: [:user, :notebook]}
        render json: NoteSerializer.new(note)
    end

    private

    def note_params
        params.require(:note).permit(:notebook_id, :title, :content)
    end
end
