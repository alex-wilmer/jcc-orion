Router.configure
  layoutTemplate: 'layout'
  waitOn: () ->
    orion.subs.subscribe 'entity', 'pages'
  data: () ->
    pages: 
      orion.entities.pages.collection.find {}, 
        sort: 
          sortOrder: 1   

Router.route '/', () ->
  this.render 'page',
    data: () ->
      orion.entities.pages.collection.findOne({sortOrder: 0})

Router.route '/:title', () ->
  this.render 'page',
    data: () ->
      orion.entities.pages.collection.findOne({title: this.params.title})
