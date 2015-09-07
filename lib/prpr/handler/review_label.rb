module Prpr
  module Handler
    class ReviewLabel < Base
      handle Event::PullRequest, action: 'labeled' do
        # REMARK: /labeled/ is matched with 'unlabeled'
        Prpr::Action::ReviewLabel::Labeled.new(event).call
      end
    end
  end
end
