var flag=0;
var k=0;
function sorttablelowtohigh() {
  var table, rows, switching, i, x, y, shouldSwitch;
  flag=0;
  k=0;
  table = document.getElementById("tab1");
  switching = true;
  /* Make a loop that will continue until
  no switching has been done: */
  while (switching) {
    // Start by saying: no switching is done:
    switching = false;
    rows = table.rows;
    /* Loop through all table rows (except the
    first, which contains table headers): */
    for (i = 1; i < (rows.length - 1); i++) {
      // Start by saying there should be no switching:
      shouldSwitch = false;
      /* Get the two elements you want to compare,
      one from current row and one from the next: */
      x = rows[i].getElementsByTagName("TD")[5];
      y = rows[i + 1].getElementsByTagName("TD")[5];
      // Check if the two rows should switch place:
      if (Number(x.innerHTML) >Number(y.innerHTML)) {
        // If so, mark as a switch and break the loop:
        shouldSwitch = true;
        break;
      }
    }
    if (shouldSwitch) {
      /* If a switch has been marked, make the switch
      and mark that a switch has been done: */
      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
      switching = true;
    }
  }
}
// function to sort the table on rating column in high to low 
function sorttablehightolow() {
flag=0;
k=0;
  var table, rows, switching, i, x, y, shouldSwitch;
  table = document.getElementById("tab1");
  switching = true;
  /* Make a loop that will continue until
  no switching has been done: */
  while (switching) {
    // Start by saying: no switching is done:
    switching = false;
    rows = table.rows;
    /* Loop through all table rows (except the
    first, which contains table headers): */
    for (i = 1; i < (rows.length - 1); i++) {
      // Start by saying there should be no switching:
      shouldSwitch = false;
      /* Get the two elements you want to compare,
      one from current row and one from the next: */
      x = rows[i].getElementsByTagName("TD")[5];
      y = rows[i + 1].getElementsByTagName("TD")[5];
      // Check if the two rows should switch place:
      if (Number(x.innerHTML) <Number(y.innerHTML)) {
        // If so, mark as a switch and break the loop:
        shouldSwitch = true;
        break;
      }
    }
    if (shouldSwitch) {
      /* If a switch has been marked, make the switch
      and mark that a switch has been done: */
      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
      switching = true;
    }
  }
}

//Function to sort the table according to popularity, as no popularity is given so it is sorted in random order
function sorttablerandom() {
  var table, rows, switching, i, x, y, shouldSwitch;
  table = document.getElementById("tab1");
  switching = true;
  /* Make a loop that will continue until
  no switching has been done: */
  while (switching) {
    // Start by saying: no switching is done:
    switching = false;
    rows = table.rows;
    /* Loop through all table rows (except the
    first, which contains table headers): */
    if(flag==1){ 
    	k=1;
	  }
    for (i = 1; i < (rows.length - 1); i++) {
      // Start by saying there should be no switching:
      shouldSwitch = false;
      /* Get the two elements you want to compare,
      one from current row and one from the next: */
      x = Math.floor(Math.random() * 11);
      y = Math.floor(Math.random() * 11);
      flag=1;
      // Check if the two rows should switch place:
      if (x<y) {
        // If so, mark as a switch and break the loop:
        shouldSwitch = true;
        break;
      }
    }
    if (shouldSwitch && k!=1) {
      /* If a switch has been marked, make the switch
      and mark that a switch has been done: */
      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
      switching = true;
    }
  }
}
