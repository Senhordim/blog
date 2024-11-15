# frozen_string_literal: true

class ArticlesController < ApplicationController
  before_action :set_article_with_slug, only: [:show]

  # GET /articles or /articles.json
  def index
    @articles = Article.where(public: true)
  end

  # GET /articles/1 or /articles/1.json
  def show
  end

  def set_article_with_slug
    @article = Article.friendly.find(params.expect(:id))
  end
end
