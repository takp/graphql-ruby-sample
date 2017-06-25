# graphql-ruby-sample

This is sample project for [GraphQL](http://graphql.org/) with Ruby on Rails.

## Versions

- Ruby 2.3.1
- Rails 5.1.1

## Run

```bash
$ bundle
$ bin/rake migrate
$ bin/rails s
```

and open [http://localhost:3000/graphiql](http://localhost:3000/graphiql).

## Get video by ID

Input

```
{
  video(id: 1){
    id,
    title,
    watched,
  }
}
```

and you can get

```
{
  "data": {
    "video": {
      "id": "1",
      "title": "Hoge movie",
      "watched": true
    }
  }
}
```

## Mutate video

Input

```
mutation Video {
  add_video(video:{title: "AAA"}) {
    id,
    title,
    watched
  }
}
```

and you can get

```
{
  "data": {
    "add_video": {
      "id": "23",
      "title": "AAA",
      "watched": false
    }
  }
}
```

# Ref

- http://graphql.org/
- http://graphql-ruby.org/
- https://github.com/rmosolgo/graphql-ruby
