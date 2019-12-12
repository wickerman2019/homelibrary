class ReadersController < ApplicationController
    def create
        @book = Book.find(params[:book_id])
        @reader = @book.readers.create(reader_params)
        redirect_to book_path(@book)
      end
    
      private
        def reader_params
          params.require(:reader).permit(:name, :takedate, :returndate)
        end
end
