# frozen_string_literal: true

RSpec.describe Web::Controllers::Home::Index, type: :action do
  let(:action) { described_class.new }
  let(:params) { {} }

  it "is successful" do
    response = action.call(params)
    expect(response[0]).to eq 200
  end
end
