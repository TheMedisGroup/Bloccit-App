require 'rails_helper'

RSpec.describe "sponsored_post/show.html.erb", type: :view do
  <h1><%= @sponsored_post.title %></h1>

 <div class="row">
   <div class="col-md-8">
     <p><%= sponsored_post.body %></p>
   </div>
   <div class="col-md-4">
     <%= link_to "Edit", edit_topic_sponsored_post_path(@sponsored_post.topic, @sponsored_post), class: 'btn btn-success' %>
   </div>
 </div>
end
