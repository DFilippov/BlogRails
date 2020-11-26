Rails.application.routes.draw do

  devise_for :users
  #      добавили после установки в проект гема Devise - root to: "articles#index"
  root to: "articles#index"

  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get 'terms/index'
  # get 'about/index'

  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'

  # здесь модель Article но прописываем articles (во множественном числе)
  resources :articles  do
          # здесь делаем вложенные ресурсы (тк отношение Article has_many Comment)
          resources :comments, only: [:create]
  end


  # resource - в единственном числе (отличается от resources)
  # - множественное используется в случаях вроде: /articles/1   /articles/2 и т.д.
  # (единственно - если не предполагается использование path с различными порядковыми субпутями)
  # применяем еще параметр only - прописываем только методы new и create
  # то есть для данной страницы будут работать только эти методы
  # resource :contacts, only: [:new, :create]
  # убрали :new  из разрешенных параметров и заменили на:
  # get 'contacts' => 'contacts#new'
  # применили иной синтаксис, вернув :new в разрешенные параметры:
  resource :contacts, only: [:new, :create], path_names: { :new => ''}





  # resource устроен по принципу REST и в данном случае
  # new - получает метод GET
  # create - получает метод POST

  # get 'terms/index'
  # get 'about'
  # get 'contacts/new'
  # post 'contacts'
end
