class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def backdoor
    @url = params["url"]
    @desc = params["desc"]
    @thumb = params["thumb"]

    render({ :template => "item_templates/backdoor" })
  end

  def create
    @url = params["url"]
    @desc = params["desc"]
    @thumb = params["thumb"]

    curr = Item.new
    curr.link_description = @desc
    curr.link_url = @url
    curr.thumbnail_url = @thumb
    redirect_to("/")
  end
end
