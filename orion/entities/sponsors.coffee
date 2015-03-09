orion.addEntity 'sponsors', 
  sortOrder: 
    type: Number
    label: "Sort Order"
  
  name: 
    type: String
    label: "Name"

, 
    icon: 'bookmark'
    sidebarName: 'Sponsors'
    pluralName: 'Sponsors'
    singularName: 'Sponsor'
    tableColumns: 
      [ data:'name', title: 'Name',
        data:'sortOrder', title: '#' ]
