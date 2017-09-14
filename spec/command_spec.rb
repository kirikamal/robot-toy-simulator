require 'spec_helper'
require 'command'
require 'table'
require 'robot'
require 'position'
require 'place'

RSpec.describe Command do
    let(:robot) { Robot.new }
    let(:table) { Table.new(5,5) }
    let(:command) { Command.new(robot, table) }

    describe '#left_command' do
        cmd = 'LEFT'

        it 'creates left command' do
            expect(LeftCommand).to receive(:new).with(robot)
            
        end
    end
end
