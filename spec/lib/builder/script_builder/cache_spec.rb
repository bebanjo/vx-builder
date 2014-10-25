require 'spec_helper'

describe Vx::Builder::ScriptBuilder::Cache do
  let(:app)    { ->(env) { env } }
  let(:script) { described_class.new app }
  let(:env)    { create :env }
  let(:run)    { script.call env }
  subject { run }

  it { is_expected.to eq env }

end
