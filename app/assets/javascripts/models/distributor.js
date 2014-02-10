DistMGMT.Models.Distributor = Backbone.Model.extend({
  parse: function(data){
    var accounts = data.accounts;
    data.accounts = new DistMGMT.Collections.Accounts(accounts);
    return data;
  }
});
