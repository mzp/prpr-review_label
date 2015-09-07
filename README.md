# Prpr::ReviewLabel
[Prpr](https://github.com/mzp/prpr) plugin to notify pull request to chat service.

## Install

Add this line to your application's Gemfile:

```ruby
# Gemfile
gem 'prpr-review_label', github: 'mzp/prpr-review_label'
```

## Usage
When some pull request is labeled, the pull request is notified to chat service.

![review notification](https://raw.githubusercontent.com/mzp/prpr-review_label/master/review_notification.png)

To add chat service, use publisher adapter (e.g. [prpr-slack](https://github.com/mzp/prpr-slack)).

## Env

```
REVIEW_LABEL - label name repsenting in-review (Default: REVIEW)
REVIEW_LABEL_NOTIFICATION - notification message body.
REVIEW_LABEL_ROOM - room for notificating in-review
```

`%{field_name}` of `REVIEW_LABEL_NOTIFICATION` is replaced with corresponding value in [pull request payload](https://developer.github.com/v3/pulls/#get-a-single-pull-request) (e.g. `title`, or `body`, `html_url`).

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
