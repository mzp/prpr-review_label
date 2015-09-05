module Prpr
  module Handler
    class ReviewLabel < Base
      handle Event::PullRequest, action: /labeled/ do
        Prpr::Action::ReviewLabel::Labeled.new(event).call
      end
    end
  end
end
