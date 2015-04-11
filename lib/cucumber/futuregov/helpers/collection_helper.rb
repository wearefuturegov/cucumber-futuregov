module Cucumber
  module FutureGov
    module Helpers
      module CollectionHelper

        def should_see_list_of(things, options={})
          # WARNING: partial matches on list class name possible. For example,
          # should_see_list_of(:foos) matches <div class="foosball">. This might
          # be ok, it might even be desirable, but it's also subject to change.
          locator = "//body//*[@id='#{things}' or contains(@class,'#{things}')]"
          within(:xpath, locator) do
            should have_css(
              ".#{things.singularize}", count: options[:count]
            )
          end
        end

      end
    end
  end
end

World(Cucumber::FutureGov::Helpers::CollectionHelper)
