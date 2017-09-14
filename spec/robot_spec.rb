require 'spec_helper'
require 'robot'
require 'table'
require 'position'
require 'command'
require 'place'

RSpec.describe Robot do

    let(:robot) { Robot.new }
    let(:table) { Table.new(5,5) }

    describe '#is_placed?' do
    
        before do
            Place.new(robot, table, position).place_command
        end

        context 'with valid position' do 
            let(:position) { Position.new(1,2, 'NORTH') }

            it 'places robot in valid position' do
                expect(robot.current_position).to eq(position)
            end
        end

        context 'with invalid positions' do
            let(:position) { Position.new(6,6, 'WEST') }

            it 'will not place robot in the table' do
                expect(robot.current_position).to be nil
            end
        end
    
    end

end