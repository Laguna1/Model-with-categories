# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'doctors/show', type: :view do
  before(:each) do
    @doctor = assign(:doctor, Doctor.create!(
                                fullname: 'Fullname',
                                category: nil
                              ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Fullname/)
    expect(rendered).to match(//)
  end
end
