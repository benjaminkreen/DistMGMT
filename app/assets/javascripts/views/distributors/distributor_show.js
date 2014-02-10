DistMGMT.Views.DistributorShow = Backbone.View.extend({

  template: JST['distributors/show'],
  
  render: function(){
    
    this.$el.html(this.template({
      model: this.model
    }));
    return this;
  }

});
