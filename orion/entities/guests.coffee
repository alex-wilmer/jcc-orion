orion.addEntity 'guests',
  name: 
    type: String
    label: 'Name'
  
  attending: 
    type: Boolean
    label: 'Attending'
, 
  icon: 'bookmark'
  sidebarName: 'Guests'
  pluralName: 'Guests'
  singularName: 'Guest'
  tableColumns: 
    [ data:'name', title: 'Name',
      data:'attending', title: 'Attending' ]
