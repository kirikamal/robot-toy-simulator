require 'spec_helper'
require 'position'

RSpec.describe Position do
    
    describe '#goto' do
        it 'goes NORTH' do
            position = Position.new(1, 1, 'NORTH')

            expect(position.goto('NORTH')).to eq(Position.new(1, 2, 'NORTH'))
        end

        it 'goes SOUTH' do
            position = Position.new(1, 1, 'SOUTH')
      
            expect(position.goto('SOUTH')).to eq(Position.new(1, 0, 'SOUTH'))
          end
    end
end