class Yandexiframe < SitePrism::Page
  element :text, '.stripe__text-part'
  element :download_link, '.stripe__link-text'
end

class BasePage < SitePrism::Page
  iframe :yandex_browser_promo, Yandexiframe, 'iframe'

  element :search_field, "input[type='search']"
  element :search_button, '.suggest2-form__button'
end

