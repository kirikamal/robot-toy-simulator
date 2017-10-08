require 'spec_helper'
require 'robot'
require 'table'
require 'position'
require 'command'
require 'place'

RSpec.describe Command do

    let(:robot) { Robot.new }
    let(:table) { Table.new(5,5) }
    let(:command) { Command.new(robot, table) }

    describe '#left_command' do
        
        it 'when facing NORTH turns WEST' do
            position = Position.new(1,1,'NORTH')
            place = Place.new(robot, table, position).place_command
            # place.place_command
            command.left_command
            expect(command.report_command).to eq('1,1,WEST')            
        end
    end
end