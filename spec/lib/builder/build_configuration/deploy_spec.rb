require 'spec_helper'

describe Vx::Builder::BuildConfiguration::Deploy do
  let(:params) { { "shell" => '/bin/true' } }
  let(:deploy) { described_class.new params }
  subject { deploy }

  context "attributes" do
    subject { deploy.attributes }

    context "when is hash" do
      let(:params) { { "shell" => '/bin/true' } }
      it { should eq [{"shell" => "/bin/true"}] }
    end

    context "when is array" do
      let(:params) { [{"shell" => '/bin/true'}] }
      it { should eq [{"shell" => "/bin/true"}] }
    end

    context "when is nil" do
      let(:params) { nil }
      it { should eq [] }
    end
  end

  context "find" do
    let(:branch) { 'master' }
    subject { deploy.find branch }

    context "when deploy branch is empty array" do
      let(:params) { {'shell' => 'true'} }
      it { should_not be_empty }
    end

    context "when deploy branch is array" do
      let(:params) { {'shell' => 'true', 'branch' => ['master', 'production']} }

      it "should be true if branch found" do
        expect(deploy.find 'master').to_not be_empty
        expect(deploy.find 'production').to_not be_empty
      end

      it "should be false if branch not found" do
        expect(deploy.find 'staging').to eq []
      end
    end
  end

  context "merge" do
    pending 'write me'
  end
end
