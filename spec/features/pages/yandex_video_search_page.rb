class YandexVideoSearchPage < BasePage
  set_url '/video/search{?query*}'
  set_url_matcher %r{/video/search}

  element :load_spinner, '.spin2_js_inited'

  sections :search_result_sections, SearchResultSection, '.serp-item'
end
