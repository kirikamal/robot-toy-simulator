require 'spec_helper'
require 'robot'
require 'table'
require 'position'
require 'command'
require 'place'

RSpec.describe Place do

    describe '#place_command' do
        let(:robot) { Robot.new }
        let(:table) { Table.new(5,5) }
        let(:command) { Command.new(robot, table) }
        let(:place) { Place.new(robot, table, position)}

        context 'with valid position' do
            let(:position) { Position.new(1,1,'NORTH') }
            
            it 'places robot in a valid position' do
                place.place_command
                expect(command.report_command).to eq('1,1,NORTH')
            end
        end
    end

end