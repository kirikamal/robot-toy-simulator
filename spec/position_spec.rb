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

        it 'goes EAST' do
            position = Position.new(1,1, 'EAST')

            expect(position.goto('EAST')).to eq(Position.new(2,1, 'EAST'))
        end

        it 'goes WEST' do
            position = Position.new(1,1, 'WEST')

            expect(position.goto('WEST')).to eq(Position.new(0,1, 'WEST'))
        end
    end

    describe '#==' do
        it 'returns true when coordinates are same in both positions' do
            position_x = Position.new(1,1,'NORTH')
            position_y = Position.new(1,1,'NORTH')

            expect(position_x).to eq(position_y)
        end
    end

    describe 'turn_left' do
        it 'when facing NORTH returns WEST' do
            position = Position.new(1,1,'NORTH')

            expect(position.turn_left).to eq('WEST')
        end

        it 'when facing EAST returns NORTH' do
            position = Position.new(1,1,'EAST')

            expect(position.turn_left).to eq('NORTH')
        end

        it 'when facing WEST returns SOUTH' do
            position = Position.new(1,1,'WEST')

            expect(position.turn_left).to eq('SOUTH')
        end

        it 'when facing SOUTH returns EAST' do
            position = Position.new(1,1,'SOUTH')

            expect(position.turn_left).to eq('EAST')
        end
    end

    describe 'turn_right' do
        it 'when facing NORTH returns EAST' do
            position = Position.new(1,1,'NORTH')
            
            expect(position.turn_right).to eq('EAST')
        end

        it 'when facing EAST returns SOUTH' do
            position = Position.new(1,1,'EAST')

            expect(position.turn_right).to eq('SOUTH')
        end

        it 'when facing SOUTH returns WEST' do
            position = Position.new(1,1,'SOUTH')

            expect(position.turn_right).to eq('WEST')
        end

        it 'when facing WEST returns NORTH' do
            position = Position.new(1,1,'WEST')

            expect(position.turn_right).to eq('NORTH')
        end
    end
end