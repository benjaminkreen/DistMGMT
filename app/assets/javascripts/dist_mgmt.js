window.DistMGMT = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    console.log('Hello from Backbone!');
    DistMGMT.sessionDist = new DistMGMT.Collections.Distributors();
    DistMGMT.sessionDist.fetch({
      success: function(){
        console.log("FETCH SUCCESS")
        new DistMGMT.Routers.Distributors({
          $rootEl: $('#bb_handle')
        });
        Backbone.history.start();
      }
    });
  }
};


