DistMGMT.Routers.Distributors = Backbone.Router.extend({
	initialize: function(options){
		this.$rootEl = options.$rootEl;
	},
  
  routes: {
    "" : "root",
    "distributor/new" : "newDistributor",
    "account/new" : "newAccount",
    "sale/new": "newSale",
    "distributor/:id": "distributorShow",
    "account/:id" : "accountShow",
    "sale/:id": "saleShow"
  },
  
  root: function(){
    view = new DistMGMT.Views.DistributorsIndex({
      collection: DistMGMT.sessionDist
    });
    this._swapView(view);
  },
  
  distributorShow: function(id){
    view = new DistMGMT.Views.DistributorShow({
      model: DistMGMT.sessionDist.get(id)
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
