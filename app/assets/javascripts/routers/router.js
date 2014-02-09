DistMGMT.Routers.Distributors = Backbone.Router.extend({
	initialize: function(options){
		this.$rootEl = options.$rootEl;
	},
  
  routes: {
    "" : "root",
    "distributor/new" : "newDistributor",
    "account/new" : "newAccount",
    "sale/new": "newSale",
    "account/:id" : "account",
    "sale/:id": "sale"
  },
  
  root: function(){
    view = new DistMGMT.Views.DistributorsIndex({
      collection: DistMGMT.sessionDist
    });
    this._swapView(view);
  },
  
  newDistributor: function(){
    console.log("new Distributor link");
  },
  
  _swapView: function(view){
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(this._currentView.render().$el);
  }
});
