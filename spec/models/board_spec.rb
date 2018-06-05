require 'rails_helper'

RSpec.describe Board, type: :model do
  describe 'attributes' do
   it { should respond_to :lists }
 end

 describe 'attribute check' do
  before(:each) do
    @board = FactoryBot.create(:board)
    @example_board = Board.create(title: 'chores')
  end
  
  it 'should check if a board has a title' do
    expect(@board.title).to eq(@exampleBoard.title)
  end
 end
end