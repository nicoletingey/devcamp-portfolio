class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def about
  end

  def contact
  end

  def tech_news
    @tweets = SocialTool.twitter_search
    @pics = SocialTool.instagram_search
  end
end
