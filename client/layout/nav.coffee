Template.nav.helpers
  active: (page) ->
    if page == Session.get 'currentPage' then 'active' else ''