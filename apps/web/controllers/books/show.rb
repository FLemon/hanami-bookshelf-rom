# frozen_string_literal: true

module Web
  module Controllers
    module Books
      class Show
        include Web::Action

        expose :book

        params do
          required(:id).filled(:integer)
        end

        def call(params)
          @book = Bookshelf::Repositories[:Book].root.where(id: params[:id]).one
          halt 422 unless @book
        end
      end
    end
  end
end
