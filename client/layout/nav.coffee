Template.nav.helpers
  active: (page) ->
    if page == Router.current().originalUrl.split('/').pop().replace('%20', ' ') then 'active' else ''