class SearchController < ApplicationController
        def index
                # # Commented: custom search (finds words in article (in title & text) and in comments
                # # minimalistic search logic: e.g. query 'ten' results in: 'ten', 'content' etc.
                # # add % symbol for SQL-query in content of article's titles and text
                # # (the same is for comment's body)
                # search_text = params[:search_query]
                # search_query = '%' + search_text.downcase + '%'
                #
                # articles_by_title = Article.where("title LIKE ?", search_query)
                # articles_by_text = Article.where("text LIKE ?", search_query)
                #
                # articles_by_comment_body = []
                # comments = Comment.where('body LIKE ?', search_query)
                # comments.each do |comment|
                #         article = Article.find(comment.article_id)
                #         articles_by_comment_body.append(article)
                # end
                # articles_by_comment_body.uniq!
                #
                # @search_results = [articles_by_text, articles_by_title, articles_by_comment_body]
                # @search_results.flatten!
                # @search_results.uniq!


                # searching with SearchKick (ElasticSearch)
                query = params[:search_query].presence || "*"

                # attribute 'load: false' - to fetch all data from ElasticSearch (not from database)
                # misspellings (when true - search behaviour is weird, e.g. search query '0' results in 'a')
                search_options = {
                        highlight: true,
                        # fields: [:title, :text],
                        misspellings: false,
                        models: [Article, Comment]
                        # , load: false
                }

                @search_results = Searchkick.search query, search_options
                # @comment_highlights = ["I'm", "<em>here</em>", "!!"]

                @search_results.with_hit.each do |element, details|
                        # puts __LINE__ , "=========", element.class, element.inspect, details
                end

        end
end
