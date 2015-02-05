orion.addEntity 'pages', 
  sortOrder: 
    type: Number,
    label: "Sort Order"
  
  title: 
    type: String,
    label: "Title"
 
  body: orion.attribute 'froala', 
    label: 'Body',
    optional: true
, 
    icon: 'bookmark'
    sidebarName: 'Pages'
    pluralName: 'Pages'
    singularName: 'Page'
    tableColumns: 
      [ data:'title', title: 'Title',
        data:'sortOrder', title: '#' ]
