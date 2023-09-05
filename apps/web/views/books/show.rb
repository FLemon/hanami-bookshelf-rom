module Web
  module Views
    module Books
      class Show
        include Web::View
        include Hanami::Helpers

        def details
          html.aside(id: 'details') do
            h2 book.title
            p "By #{book.author}"
          end
        end

        def actions
          html.aside(id: 'actions') do
            form_for :book, routes.book_path(book.id), method: :delete do
              submit 'Destroy'
            end
          end
        end
      end
    end
  end
end
