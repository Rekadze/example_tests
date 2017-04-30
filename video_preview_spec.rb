feature 'Check video preview' do
  let(:yandex_video_page) { YandexVideoPage.new }
  let(:yandex_video_search_page) { YandexVideoSearchPage.new }

  scenario "Check video preview after search" do
    yandex_video_page.load
    yandex_video_page.wait_for_yandex_browser_promo

    yandex_video_page.search_field.set 'Ураган'
    yandex_video_page.search_button.click

    yandex_video_search_page.wait_until_load_spinner_invisible

    yandex_video_search_page.search_result_sections[0].video_preview.hover
    expect(yandex_video_search_page.search_result_sections[0].video_preview[:srcset]).to be, 'No preview for first video'
  end

  xscenario "Check video preview 'without' searching" do
    yandex_video_search_page.load(query: {text: 'Ураган'})
    yandex_video_search_page.wait_until_load_spinner_invisible

    yandex_video_search_page.search_result_sections[0].video_preview.hover
    expect(yandex_video_search_page.search_result_sections[0].video_preview[:srcset]).to be, 'No preview for first video'
  end
end