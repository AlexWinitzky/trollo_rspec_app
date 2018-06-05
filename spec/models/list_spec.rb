require 'rails_helper'

RSpec.describe List, type: :model do
  describe 'attributes' do
    it {should respond_to :board}
    it {should respond_to :tasks}
  end

  describe 'attribute check' do
    before(:each) do
      @list = FactoryBot.create(:list)
      @example_list = List.create(title: 'Chores', priority: 1)
    end
      
      it 'should check if a list has a title and a priority' do
      expect(@list.title).to eq (@example_list.title)
      expect(@list.priority).to eq(@example_list.priority)
    end
  end
end
