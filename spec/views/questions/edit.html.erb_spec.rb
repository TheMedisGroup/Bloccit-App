require 'rails_helper'

RSpec.describe "questions/edit.html.erb", type: :view do
  <%= fields_for "resolved[questions][]", invoice, index: nil do |form| %>
  <%= form.check_box :paid %>
end
