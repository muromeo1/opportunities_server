require "spec_helper"

RSpec.describe Api::V1::Views::ApplicationLayout, type: :view do
  let(:layout)   { Api::V1::Views::ApplicationLayout.new({ format: :html }, "contents") }
  let(:rendered) { layout.render }

  it 'contains application name' do
    expect(rendered).to include('Api::V1')
  end
end
