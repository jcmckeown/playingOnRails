function getMyKey(name,whither) {
  var req = new XMLHttpRequest();
  req.open("GET","/userkeys/fetch.xml?quem=" + name + "&claim=yes" );
// req.setRequestHeader("x-CSRF-token", Document.getElementsByName("csrf-token")[0].content)
  req.addEventListener("load",
    function(){
      whither.innerHTML = req.responseText;
    }
  );
  req.send();
}
