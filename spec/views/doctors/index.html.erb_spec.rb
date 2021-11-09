# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'doctors/index', type: :view do
  before(:each) do
    assign(:doctors, [
             Doctor.create!(
               fullname: 'Fullname',
               category: nil
             ),
             Doctor.create!(
               fullname: 'Fullname',
               category: nil
             )
           ])
  end

  it 'renders a list of doctors' do
    render
    assert_select 'tr>td', text: 'Fullname'.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
