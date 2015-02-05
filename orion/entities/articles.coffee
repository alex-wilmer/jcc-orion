orion.addEntity 'articles',
  headline:
    type: String
    label: 'Headline'

  date:
    type: Date

  description: orion.attribute 'froala', 
    label: 'Description',
    optional: true
  
  body: orion.attribute 'froala', 
    label: 'Body',
    optional: true
, 
    icon: 'bookmark'
    sidebarName: 'Articles'
    pluralName: 'Articles'
    singularName: 'Article'
    tableColumns: 
      [ data:'headline', title: 'Headline',
        data:'date', title: 'Date' ]
