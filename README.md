# Opportunities Server
> ruby 2.7.3

A small project made in hanami with API only, demonstrating how an API works in this framework. All front-end part has been removed.

Enjoy!

## Setup

How to run tests:

```
$ bundle exec rake
```

How to run the development console:

```
$ hanami console
```

How to run the development server:

```
$ hanami server
```

## End-points

### Get opportunities in blocks

Route:
```
GET /api/v1/opportunities
```

Params:
```
# required

copmany_id: String
page: String

# optional

per_page: String # default: 5
```

### Get a single opportunity

Route:
```
GET /api/v1/opportunities/:id
```

Explore Hanami [guides](https://guides.hanamirb.org/), [API docs](http://docs.hanamirb.org/1.3.3/), or jump in [chat](http://chat.hanamirb.org) for help. Enjoy! 🌸
