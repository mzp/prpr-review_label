module Prpr
  module Action
    module ReviewLabel
      class Labeled < Base
        def call
          if in_review?
            Publisher::Adapter::Base.broadcast message
          end
        end

        private

        def message
         Prpr::Publisher::Message.new(body: body, from: from, room: room)
        end

        def in_review?
          label == review_label
        end

        def label
          event.label.name
        end

        def review_label
          env[:review_label] || 'REVIEW'
        end

        def body
          env.format(:review_label_body, event.pull_request)
        end

        def from
          event.sender
        end

        def room
          env[:review_label_room]
        end
      end
    end
  end
end
