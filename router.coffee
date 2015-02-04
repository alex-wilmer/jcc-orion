Router.configure
  layoutTemplate: 'layout'
  waitOn: () ->
    [orion.subs.subscribe 'entity', 'pages',
     orion.subs.subscribe 'entity', 'guests']
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
      orion.entities.pages.collection.findOne {sortOrder: 1}

Router.route '/:title', () ->
  this.render 'page',
    data: () ->
      orion.entities.pages.collection.findOne({title: this.params.title})
