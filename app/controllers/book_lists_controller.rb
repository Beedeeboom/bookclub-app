class BookListsController < ApplicationController
    before_action :authenticate_user!

    def index
        @books = current_user.books
    end

    # def self.books_for_current_user(current_user)
    #     books = []
    #     BookList.where(user_id:current_user.id).each do |book_list|
    #         @books.push(Book.find(book_list.book_id))
    #     end
    # end
end
