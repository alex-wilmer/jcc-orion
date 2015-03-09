Template.page.helpers({
  onHomePage: function() {
    var pathname = location.pathname.toLowerCase();
    return pathname === '/' || pathname === '/home';
  }
});
