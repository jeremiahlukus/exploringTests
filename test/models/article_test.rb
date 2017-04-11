require 'test_helper'

class ArticleTest < ActiveSupport::TestCase


  def setup
    @article = Article.create(title: "Article1", description: "This is an article",)
  end

  test 'article should be valid' do
    assert @article.valid?
  end


  test 'title should be present' do 
    @article.title = " "
    assert_not @article.valid?
  end

  test 'title should not be to short' do
    @article.title = 'aaaa'
    assert_not @article.valid?
  end

  test 'title should not be to long' do
    @article.title = "a" * 51
    assert_not @article.valid?
  end

  test 'description should be present' do 
    @article.description = " "
    assert_not @article.valid?
  end


  test 'desciption should not be to short' do
    @article.description = 'aaaa'
    assert_not @article.valid?
  end

  test 'description should not be to long' do
    @article.description = "a" * 151
    assert_not @article.valid?
  end


end

