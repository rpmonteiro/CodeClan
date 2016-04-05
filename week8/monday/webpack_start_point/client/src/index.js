var Bank = require('./bank/bank.js');
var sampleAccounts = require('./sample.js');
var Account = require('./bank/account.js');

window.onload = function(){
  console.log("webpack app started");
  var bank = new Bank();
  for (accountData of sampleAccounts) {
    bank.addAccount(new Account(accountData))
  }

  console.log('Our bank', bank);
  console.log('total cash', bank.totalCash());

  var totalDisplay = document.getElementById('total');
  totalDisplay.innerText = "Total £ in the bank: " + bank.totalCash();
};
