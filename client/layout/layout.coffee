@toggleNav = ->
  if Session.get 'navOpen'
    $('.nav-icon').html '<i class="fa fa-navicon"></i>' 
  else 
    $('.nav-icon').html '←' 

  Session.set 'navOpen', !Session.get 'navOpen'

Meteor.startup ->
  Session.set 'navOpen', window.innerWidth > 600

  window.onresize = ->
    if ((window.innerWidth < 600 && Session.get 'navOpen') ||
        (window.innerWidth > 600 && !Session.get 'navOpen'))
      toggleNav()

Template.header.events
  'click .nav-icon': (e) ->
      toggleNav()

Template.leftAside.helpers
  navClass: ->
    if Session.get 'navOpen' then 'active' else 'inactive'

Template.leftAside.events
  'click a': () ->
    toggleNav()
