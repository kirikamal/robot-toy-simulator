require 'spec_helper'
require 'command'
require 'position'
require 'robot'
require 'table'
require 'place'

RSpec.describe Command do
    describe '#left_command' do
        let(:robot) { Robot.new}
        let(:table) { Table.new(5,5) }
        let(:command) { Command.new(robot, table) }

        it 'when facing NORTH turns WEST' do
            position = Position.new(1,1,'NORTH')
            place = Place.new(robot, table, position)
            place.place_command
            command.left_command
            expect(command.report_command).to eq('1,1, WEST')
        end
    end
end