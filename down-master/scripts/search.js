
//function to search in the table on product name and product ID as well
function catfunct() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("search1");
  filter = input.value.toUpperCase();
  var filter1=document.getElementById("search1").value;
  table = document.getElementById("tab1");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td1 = tr[i].getElementsByTagName("td")[1];
    td2 = tr[i].getElementsByTagName("td")[2];
    if (td1) {
      txtValue = td1.textContent || td1.innerText;
      txtValue1 = td2.textContent || td2.innerText;
    
     var txt=make(txtValue1);
     
      if (txtValue.toUpperCase().indexOf(filter) > -1 || txt.indexOf(filter1)>-1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
}
}



