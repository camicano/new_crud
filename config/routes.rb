BooksApp::Application.routes.draw do
  resources :authors do 
    resources :books do
      resources :words
    end
  end

  root :to => 'authors#index' 
end

#  authors_books_words POST   /authors/books/words(.:format)      words#create
#  new_authors_books_words GET    /authors/books/words/new(.:format)  words#new
# edit_authors_books_words GET    /authors/books/words/edit(.:format) words#edit
#                          GET    /authors/books/words(.:format)      words#show
#                          PUT    /authors/books/words(.:format)      words#update
#                          DELETE /authors/books/words(.:format)      words#destroy
#            authors_books POST   /authors/books(.:format)            books#create
#        new_authors_books GET    /authors/books/new(.:format)        books#new
#       edit_authors_books GET    /authors/books/edit(.:format)       books#edit
#                          GET    /authors/books(.:format)            books#show
#                          PUT    /authors/books(.:format)            books#update
#                          DELETE /authors/books(.:format)            books#destroy
#                  authors POST   /authors(.:format)                  authors#create
#              new_authors GET    /authors/new(.:format)              authors#new
#             edit_authors GET    /authors/edit(.:format)             authors#edit
#                          GET    /authors(.:format)                  authors#show
#                          PUT    /authors(.:format)                  authors#update
#                          DELETE /authors(.:format)                  authors#destroy
#                     root        /                                   authors#index