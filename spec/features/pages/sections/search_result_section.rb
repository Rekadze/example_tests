class SearchResultSection < SitePrism::Section
  element :video_preview, '.thumb-preview__target'
  element :description, '.serp-item__snippet'
end
