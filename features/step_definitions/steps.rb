Given(/^I'm on Google search page$/) do
  on(SearchPage) do |page|
    expect(page.logo?).to be true
  end
end

When(/^I search by '([^"]*)'$/) do |keywords|
  on(SearchPage) do |page|
    page.search_query = keywords
    page.search
  end
end

Then(/^I see '([^"]*)' in recent news$/) do |keywords|
  puts('Verify news section:')

  on(SearchResults) do |page|
    puts("Verify 'In the news' text is present")
    page.news_element.when_visible
    expect(page.news_element.text).to include('In the news')

    puts('Verify keywords are present in news section')
    keywords_list = keywords.split('[\s\.,!?]+')
    keywords_list.each do |keyword|
      puts("Verify '#{keyword}' keyword is present")
      expect(page.news_element.text).to include keyword
    end
  end
end

And(/^I see '([^"]*)' wiki page$/) do |keyword|
  on(SearchResults) do |page|
    expect(page.wiki_link_element.text).to include keyword
  end
end

And(/^I see '([^"]*)' official website$/) do |keyword|
  on(SearchResults) do |page|
    #TODO:
  end
end

Then(/^I see the following info about '([^"]*)':$/) do |keyword, table|
  table.rows.each do |data|
    puts case data.join()
      when 'recent news'
        step "I see '#{keyword}' in recent news"
      when 'wiki page'
        step "I see '#{keyword}' wiki page"
      when 'official website'
        step "I see '#{keyword}' official website"
    end
  end
end