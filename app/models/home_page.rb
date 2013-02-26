class HomePage < Page
  desc %{
    Causes the tags referring to a home_page's attributes to refer to the current page.

    *Usage:*
    #open pre and code tag here ...
<r:page>...</r:page>
   #close pre and  code tag here.
  }
  tag 'page' do |tag|
    tag.locals.player = tag.globals.page
    tag.expand
  end

  [:home_column_1_title, :home_column_1, :home_column_2_title, :home_column_2, :home_column_3_title, :home_column_3].each do |method|
    desc %{
      Renders the @#{method}@ attribute of the home page.
    }
    tag "home_page:#{method}" do |tag|
      tag.locals.page.send("#{method}")
    end
  end

end
