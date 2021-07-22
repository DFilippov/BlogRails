class CommentsController < ApplicationController

        before_action :authenticate_user!, only: [:new, :create]

        def index
                per_page = ENV['comments_per_page'].to_i
                @article_id = params[:article_id]
                @comments = Comment.where('article_id = ?', @article_id).order(created_at: :desc).pluck
                comment_struct = Struct.new(:id, :author, :body, :article_id, :created_at, :upated_at, :user_id,)

                # mapping comments Array to Struct
                # (so that in views there will be access to properties with help of dot syntax, e.g. comment.id)
                @comments.map! do |comment|
                          comment_struct.new(comment[0], comment[1], comment[2], comment[3], comment[4], comment[5], comment[6])
                end

                # for the first query of comments list - number of the batch will be 0, further it will be fetched from params
                @batch_number = params[:batch_number].to_i || 0
                slice_start = @batch_number * per_page
                @comments = @comments.slice(slice_start, per_page)

        end


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

                if comment.save
                        redirect_to articles_path
                else
                        redirect_to article_path(@article)
                        # render 'create'
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
