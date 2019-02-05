//Function to add functionality in Remove button
function deleteRow(r)
{
	  var i = r.parentNode.parentNode.parentNode.rowIndex;
	  document.getElementById("tab1").deleteRow(i);
}