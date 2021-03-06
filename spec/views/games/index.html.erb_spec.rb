require 'rails_helper'

RSpec.describe "games/index", type: :view do
  before(:each) do
    assign(:games, [
      Game.create!(
        :name => "Name",
        :description => "Description"
      ),
      Game.create!(
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of games" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
