class ArticlesController < OutreachApi::Controller #ApplicationController
  attribute :title_length, type: :integer
  attribute :title, type: :string
  attribute :body, type: :string

  def self.model
    Article
  end

  # protect_from_forgery with: :null_session
  # rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

  # def index
  #   @articles = Article.all
  #   render json: @articles.to_json
  # end

  # def show
  #   @article = Article.find(params[:id])
  #   render json: @article.to_json
  # end

  # def create
  #   @article = Article.new(article_params)

  #   if @article.save
  #     redirect_to @article
  #   else
  #     render :json => { :errors => @article.errors.full_messages }, :status => 422
  #   end
  # end

  # private
  #   def article_params
  #     params.require(:article).permit(:title, :body)
  #   end

  #   def record_not_found(error)
  #     render :json => {:error => error.message}, :status => :not_found
  #   end 
end
