
function prepTheLogin ( ) {
  var x = theRawPassword.value;
  var y = document.getElementsByName("authenticity_token")[0].value;
  theCompiledResponse.value = "bogoCrypt( " + x + " , " + y + " )"; 
  console.log("Now we would do 'theRealBusiness.submit()' or some such");
//  ee.preventDefault(); // why don't these work???
//  ee.stopPropagation();
}

// document.getElementById("theTrySubmit").addEventListener("click",prepTheLogin);
