class SearchController < ApplicationController
        def index
                # add % symbol for SQL-query in content of article's titles and text (the same is for comment's body)
                @search_text = params[:search_query]
                search_query = '%' + @search_text.downcase + '%'

                articles_by_title = Article.where("title LIKE ?", search_query)
                articles_by_text = Article.where("text LIKE ?", search_query)

                articles_by_comment_body = []
                comments = Comment.where('body LIKE ?', search_query)
                comments.each do |comment|
                        article = Article.find(comment.article_id)
                        articles_by_comment_body.append(article)
                end
                articles_by_comment_body.uniq!

                @found_articles = [articles_by_text, articles_by_title, articles_by_comment_body]
                @found_articles.flatten!
                @found_articles.uniq!
        end
end
