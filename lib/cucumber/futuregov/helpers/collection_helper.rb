module Cucumber
  module FutureGov
    module Helpers
      module CollectionHelper

        def should_see_list_of(things)
          # warning: use an id to identify the collection element if possible
          # as the alternate selector matches elements with a class attribtue
          # that contains the collection name, e.g. foos will match foosball.
          # TODO: consider reworking this to be more specific
          should have_xpath(
            "//*[@id='#{things}' or contains(@class,'#{things}')]"
          )
        end

      end
    end
  end
end

World(Cucumber::FutureGov::Helpers::CollectionHelper)
