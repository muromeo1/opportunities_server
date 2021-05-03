require "spec_helper"

RSpec.describe V1::Views::ApplicationLayout, type: :view do
  let(:layout)   { V1::Views::ApplicationLayout.new({ format: :html }, "contents") }
  let(:rendered) { layout.render }

  it 'contains application name' do
    expect(rendered).to include('V1')
  end
end
