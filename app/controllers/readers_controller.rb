class ReadersController < ApplicationController
  before_action :set_reader, only: [:edit, :update]
    def create
        @book = Book.find(params[:book_id])
        @reader = @book.readers.create(reader_params)
        redirect_to book_path(@book)
      end
    
    # GET /readers/1/edit
    def edit  
      @book = Book.find(@reader.id)      
    end

    def update
      @reader.update(reader_params)
    end

      private
        def reader_params
          params.require(:reader).permit(:name, :takedate, :returndate)
        end

        def set_reader
          @reader = Reader.find(params[:id])
        end
end
