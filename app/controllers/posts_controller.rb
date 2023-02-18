class PostsController < ApplicationController
    def new
        @post = Post.new
    end
end

<%= form_with :model @post do |post| %>
    <p>
    <%= form.label "post", "New Post" %>
    <%= form.text_field "New Post" %>
    </p>
    
    <p>
    <%= form.label "title" %>
    <%= form.text_field "title" %>
    <%= form.label "description" %>
    <%= form.text_field "description" %>
    <%= form.label "date" %>
    <%= form.text_field "date" %>
    </p>
    <%= form.submit %>
    <% end %>

    def create
        redirect_to "/posts"
    end
    