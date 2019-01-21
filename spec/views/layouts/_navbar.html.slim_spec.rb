# frozen_string_literal: true

require 'rails_helper'
require 'application_helper'

RSpec.describe 'layouts/_navbar.html.haml', type: :view do
  def assert_navbar_link
  end

  before do
    render
  end

  describe 'navbar' do
    it 'renders a navbar' do
      assert_select 'nav', count: 1
    end

    it 'renders a brand logo' do
      assert_select 'nav .navbar-brand', count: 1
    end

    it 'render a home link' do
      assert_select 'nav ul li', text: 'Home', count: 1
    end

    it 'render a Portfolio link' do
      assert_select 'nav ul li', text: 'Portfolio', count: 1
    end

    it 'render a About Me link' do
      assert_select 'nav ul li', text: 'About Me', count: 1
    end

    it 'render a Contact Me link' do
      assert_select 'nav ul li', text: 'Contact Me', count: 1
    end

  end
end
