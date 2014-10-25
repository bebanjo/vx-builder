require 'spec_helper'

describe Vx::Builder::ScriptBuilder::OrgKey do
  let(:app)    { ->(env) { env } }
  let(:script) { described_class.new app }
  let(:env)    { create :env }
  let(:run)    { script.call env }
  subject { run }

  it { is_expected.to eq env }

  context "run it" do
    subject { env }

    context "when task name is bebanjo" do
      before do
        env.task = create :movida_task
        run
      end

      its(:organization_key) { should be(true) }
    end

    context "when task name is not bebanjo" do
      before { run }

      its(:organization_key) { should be(nil) }
    end
  end
end
