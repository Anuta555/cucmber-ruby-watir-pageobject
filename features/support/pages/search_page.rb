class SearchPage < BasePage
  img(:logo, :id => 'hplogo')
  text_field(:search_query, :id => 'lst-ib')
  button(:search, :value => 'Search')
end