require 'rails_helper'

RSpec.describe 'Home Page', type:feature do
  before(:each) do
    visit "/"
  end
  it 'can be navigated to' do
    expect(page.status_code).to eq(200)
    expect(page).to have_current_path("/")
  end

  it 'has the correct title' do
    within '#welcomeHeader' do
      expect(page).to have_text("Hello, and welcome to Sai's Porfolio!") 
    end  
  end

  context "Professional Background section" do

    it 'has a section for my professional background text' do
      expect(page).to have_selector("section#professionalBackground")
    end

    it 'has a title in this section: PB' do
      within '#professionalBackground' do
        expect(page).to have_selector("h3#pb-Title")
        expect(page).to have_text("My Professional Background")
      end
    end

    it 'has a section for me to write about my professional background' do
      within '#professionalBackground' do
        expect(page).to have_selector("p#professionalBackgroundText")
        expect(page).to have_text("Temporary Test Text -PB")        
      end
    end
  end

  context 'about me section' do
    it 'has a section for my about me' do
      expect(page).to have_selector("section#aboutMe")
    end

    it 'has a title in this section: AM' do
      within '#aboutMe' do
        expect(page).to have_selector("h3#am-Title")
        expect(page).to have_text("A Little About Me")
      end
    end

    it 'has a section for me to write about myself' do
      within '#aboutMe' do
        expect(page).to have_selector("p#aboutMeText")
        expect(page).to have_text("Temporary Test Text -AM")        
      end
    end
  end

  context 'Project Highlight section' do
    it 'has a section for displaying my projects' do
      expect(page).to have_selector("section#projectHighlight")
    end

    it 'has a title in this section: PH' do
      within '#projectHighlight' do
        expect(page).to have_selector("h3#ph-Title")
        expect(page).to have_text("Project Highlight")
      end
    end

    it 'has a two divs for different projects' do
      within '#projectHighlight' do
        expect(page).to have_selector("div#projectOne")
        expect(page).to have_selector("div#projectTwo")
      end
    end

    it 'has a place for a description in first div' do
      within '#projectHighlight' do
        within '#projectOne' do
          expect(page).to have_selector("p#projectOneDescription")
          expect(page).to have_text("Temporary Text Project One Description")
        end
      end
    end

    it 'has a place for a description in second div' do
      within '#projectHighlight' do
        within '#projectTwo' do
          expect(page).to have_selector("p#projectTwoDescription")
          expect(page).to have_text("Temporary Text Project Two Description")
        end
      end
    end
  end
end