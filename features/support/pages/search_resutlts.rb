class SearchResults < BasePage
  div(:news, :class => 'mnr-c')
  link(:wiki_link, :xpath => "//a[contains(text(), 'Wikipedia, the free encyclopedia')]")
end