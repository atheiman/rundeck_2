require 'spec_helper'

describe 'rundeck_2::default' do
  cached(:chef_run) do
    ChefSpec::ServerRunner.new do |_node, _server|
    end.converge(described_recipe)
  end

  it { expect(chef_run).to include_recipe('java') }
end
