require 'spec_helper'
require 'table'
require 'position'

RSpec.describe Table do

    describe '#is_valid_position?' do

        let(:table) { Table.new(5,5) }

        it 'returns true when x_position & y_position are valid' do
            position = Position.new(3,3, 'NORTH')

            expect(table.is_valid_position?(position)).to be true
        end

        it 'returns false when x_position is invalid' do
            position = Position.new(9,1, 'NORTH')

            expect(table.is_valid_position?(position)).to be false
        end

        it 'returns false when y_position is invalid' do
            position = Position.new(1,9, 'WEST')

            expect(table.is_valid_position?(position)).to be false
        end

        it 'returns false when x_position & y_position are invalid' do
            position = Position.new(7,7, 'EAST')

            expect(table.is_valid_position?(position)).to be false
        end
    end

end