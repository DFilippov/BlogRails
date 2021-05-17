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
                comment.user_id = current_user.id

                # TODO: improve (redirect_to twice)
                if comment.save
                        redirect_to articles_path
                else
                        redirect_to article_path(@article)
                        # render 'create'
                end

                # puts __LINE__, "===============", current_user.inspect

                # redirect_to article_path(@article)


        end


        def edit
                @comment = Comment.find(params[:id])

                # respond_to do |format|
                #         format.js { comment_id: }
                # end

        end

        def update
                @comment = Comment.find(params[:id])
                @comment.body = comment_params.dig(:body) if comment_params.dig(:body)

                # @comment.save
                if @comment.save
                        # @comment.reindex
                        broadcast_updates(@comment, 'edit')
                        # puts __LINE__ , "===== COMMENT IS SAVED", @comment.inspect
                end
        end

        def destroy
                @comment = Comment.find(params[:id])
                # @comment.body = 'COMMENT IS DELETED'
                if @comment.destroy
                        broadcast_updates(@comment, 'destroy')
                end
        end


        def edit
                @comment = Comment.find(params[:id])

                # respond_to do |format|
                #         format.js { comment_id: }
                # end

        end

        def update
                @comment = Comment.find(params[:id])
                @comment.body = comment_params.dig(:body) if comment_params.dig(:body)

                # @comment.save
                if @comment.save
                        # @comment.reindex
                        broadcast_updates(@comment, 'edit')
                        # puts __LINE__ , "===== COMMENT IS SAVED", @comment.inspect
                end
        end

        def destroy
                @comment = Comment.find(params[:id])
                # @comment.body = 'COMMENT IS DELETED'
                if @comment.destroy
                        broadcast_updates(@comment, 'destroy')
                end
        end


        # PRIVATE METHODS

        # как и в статьях, делаем защиту метода -  private
        private

        def comment_params
                params.require(:comment).permit(:author, :body)
        end

        def broadcast_updates(comment, action)
                ActionCable.server.broadcast 'comment_channel', { comment: comment, action: action }
                # ActionCable.server.broadcast 'comment_channel', comment_body: comment.body, comment_id: comment.id, updated_at: comment.updated_at
        end

end
