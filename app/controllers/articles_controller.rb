class ArticlesController < ApplicationController

	# before_action :authenticate_user!
	# чтобы без авторизации разрешить открывать show и index, делаем так:
	before_action :authenticate_user!, only: [:new, :create]

	# index method gives all items of model (article)
	def index
		@articles = Article.all
	end


	# show method is for single item (article with specified id)
	def show
		@article = Article.find(params[:id])
	end

	def new
	end

	def create
		# render - это метод rails отрендерит информацию
		# render plain: params[:article].inspect

		# @article = Article.new(params[:article])
		@article = Article.new(article_params)
		@article.user_id = current_user.id

		if @article.save
			# render action: 'create'

		#	чтобы не было двойного сабмита формы (когда
		# 	засабмитили форму, а затем обновили страницу,
		# 	покажет алерт об отмене или продолжении сабмита формы
		# 	- причем сабмит будет уже повторный)
			# используем редирект:
			redirect_to articles_path
		else
			render action: 'new'
		end
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
		if @article.update(article_params)
			redirect_to '/articles'
		else
			# id = params[:id]
			# render action: "/articles/#{id}/edit"
			render 'edit'
		end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy

		redirect_to articles_path
	end

	# PRIVATE METHODS
	private
	# по дефолту доступ к параметрам запрещен, поэтому разрешаем в методе:
	def article_params
		params.require(:article).permit(:title, :text)
	end


end
