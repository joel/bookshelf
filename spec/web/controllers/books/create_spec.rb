# frozen_string_literal: true

RSpec.describe Web::Controllers::Books::Create, type: :action do
  let(:action) { described_class.new }
  let(:params) { Hash[book: { title: "Confident Ruby", author: "Avdi Grimm" }] }
  let(:repository) { BookRepository.new }

  before do
    repository.clear
  end

  it "creates a new book" do
    expect do
      action.call(params)
    end.to change {
      BookRepository.new.all.size
    }.by(+1)
  end

  it "redirects the user to the books listing" do
    response = action.call(params)

    expect(response[0]).to eq(302)
    expect(response[1]["Location"]).to eq("/books")
  end
end
