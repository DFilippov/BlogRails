class CommentsController < ApplicationController

        before_action :authenticate_user!, only: [:new, :create]

        def create
                # тк комментарий - это часть статьи, то и создание комментария будет через @article
                # если посмотреть в маршрутах:
                #POST            /articles/:article_id/comments(.:format)        comments#create
                # поэтому:      params[:article_id]
                @article = Article.find(params[:article_id])

                # @article.comments.create( { author: 'Mike', body: 'Hello! It is Mike!'} )

                # @article.comments.create(comment_params)
                #заменили на:
                comment = @article.comments.new(comment_params)
                comment.author = current_user.username

                if comment.save
                        redirect_to article_path(@article)
                else
                        redirect_to article_path(@article)
                        # render 'create'
                end
                # puts __LINE__, "===============", current_user.inspect

                # redirect_to article_path(@article)

        end


        # PRIVATE METHODS

        # как и в статьях, делаем защиту метода -  private
        private

        def comment_params
                params.require(:comment).permit(:author, :body)
        end

end
