class CollectionsController < ApplicationController
  protect_from_forgery :except => :create

  def create
    node = Node.find_by_name(params["category"])
    node = Node.first unless node
    topic = node.topics.new(title: params["title"], content: params["content"], hidden: true, from_src: params["from_src"])
    topic.user = User.first
    if topic.save
      render :text => "success"
    else
      puts topic.errors.messages
      render :text => topic.errors.messages
    end
  end

end
