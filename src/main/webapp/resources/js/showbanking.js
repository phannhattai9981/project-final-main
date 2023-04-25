
var cardNumber = "${showAccountBanking.cardNumber}";
var formattedCardNumber = "";

for (var i = 0; i < cardNumber.length; i += 4) {
  var chunk = cardNumber.substr(i, 4);
  formattedCardNumber += " " + chunk;
}
document.write("<td style='padding-top:15px;'>" + formattedCardNumber + "</td>");

