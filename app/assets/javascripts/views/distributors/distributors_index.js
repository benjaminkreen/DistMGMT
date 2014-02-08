DistMGMT.Views.DistributorsIndex = Backbone.View.extend({

  template: JST['distributors/index'],
  
  render: function(){
    
    this.$el.html(this.template({
      distributors: this.collection
    }));
    return this
  }

});
