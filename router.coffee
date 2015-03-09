Router.configure
  layoutTemplate: 'layout'
  loadingTemplate: 'loading'

  waitOn: () ->
    [orion.subs.subscribe 'entity', 'pages',
     orion.subs.subscribe 'entity', 'guests',
     orion.subs.subscribe 'entity', 'articles']

  data: () ->
    pages:
      orion.entities.pages.collection.find {},
        sort:
          sortOrder: 1

    guests:
      orion.entities.guests.collection.find {},
        sort:
          name: 1

Router.route '/', () ->
  this.render 'page',
    data: () ->
      page: orion.entities.pages.collection.findOne {sortOrder: 1}

Router.route '/:title', () ->
  if this.params.title == 'News'
    return this.render 'news',
      data: () ->
        articles:
          orion.entities.articles.collection.find {},
            sort:
              date: -1

  this.render 'page',
    data: () ->
      page: orion.entities.pages.collection.findOne {title: this.params.title}

      articles:
        orion.entities.articles.collection.find {},
          sort:
            date: -1
