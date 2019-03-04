<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="styles/adminListProducts.css">
 <script>
function catfunct() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("search1");
  filter = input.value.toUpperCase();
  table = document.getElementById("tab1");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[3];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
<script>
function catfunct() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("search1");
  filter = input.value.toUpperCase();
  table = document.getElementById("tab1");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[3];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>

<script>
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
      x = rows[i].getElementsByTagName("TD")[4];
      y = rows[i + 1].getElementsByTagName("TD")[4];
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
      x = rows[i].getElementsByTagName("TD")[4];
      y = rows[i + 1].getElementsByTagName("TD")[4];
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
</script>
</head>
<body>
<div class="container-fluid">
<div class="pageheader" id="header">
<div class="row">
<div class="col-md-2">
<img src="images/nav_logo.jpg" id="plimg" >
</div>
<div class="col-md-1">
</div>
<div class="col-md-2">
<form class="navbar-form" id="head">
<div class="input-group add-on">
<input class="form-control" placeholder="Search" id="search" type="text">
<div class="input-group-btn">
<button type="submit" class="btn btn-default" id="searchbtn">
<i class="glyphicon glyphicon-search"></i>
</button>
</div>
</div>
</form>

</div>
<div class="col-md-2"></div>
<div class="col-md-1">
<i class="glyphicon glyphicon-bell notification-icon" id="bell"></i>
</div>
<div class="col-md-2" id="adname">
<h4><b id="welcome">Welcome <%=request.getAttribute("username") %></b></h4>


</div>
<div class="col-md-1" id="btnlog">
<form action="login.jsp" id="btnform">
<button type="submit" id="log" class="btn"><span>Logout</span></button>
</form>
</div>


</div>
</div>
</div>



<div class="container-fluid">
<div class="row" id="side">
<div class="col-md-2" >
<div class="sidenav" >
<div class="row" id="pro">
<div class="col-sm-4">
<p>PROFILE</p></div>
<div class="col-sm-4"></div>

</div>
<div id="imageh">
<img class="img-responsive" id="profilePicture" src="images/billgates.jpg"/>
</div>
<div id="infotext">
<p style="font-size:20px; margin-top:px;"><b>Helen Cho</b></p>
 
<p><b>ID</b><br>GRZLY17234</p>
<p><b>Designation</b><br>Sr.Admin</p>
 
<p><b>Office</b><br>NYC,NY,USA</p>
 
</div>
</div>
</div>
<div class="col-md-9">
<br><br>
<ul class="nav nav-pills nav-justified">
<li class="active">
  <a data-toggle="pill" href="#product">Products</a>
  </li>
<li>
   <a data-toggle="pill" href="#vendor">Vendors</a></li>
<li>
   <a data-toggle="pill" href="#category">Category</a></li>
</ul>
<div class="tab-content">
<div id="product" class="tab-pane fade in active">
<div class="row">
<div class="col-md-2">
<div class="dropdown" id="cdrop">
    <button class="btn btn-default dropdown-toggle" id="dropbtn" type="button" data-toggle="dropdown">Choose Action
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a href="#">HTML</a></li>
      <li><a href="#">CSS</a></li>
      <li><a href="#">JavaScript</a></li>
    </ul>
  </div></div>
  <div class="col-md-3">
  
  <form class="form" id="head1">
<div class="input-group add-on">
<input class="form-control" placeholder="Category name" id="search1" onkeyup="catfunct()" type="text">
<div class="input-group-btn">
<button type="submit" class="btn btn-default" id="searchbtn1">
<i class="glyphicon glyphicon-search"></i>
</button>
</div>
</div>
</form>
  </div>
  <div class="col-sm-2">
  <div class="dropdown" id="cdrop1">
    <button class="btn btn-default dropdown-toggle" id="dropbtn1" type="button" data-toggle="dropdown">Sort By
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li onclick="sorttablelowtohigh()" style="cursor:pointer; padding-left:20px;">low-high</li>
      <li onclick="sorttablehightolow()" style="cursor:pointer; padding-left:20px;">high-low</li>
      <li onclick="sorttablerandom()" style="cursor:pointer; padding-left:20px;">popularity</li>
    </ul>
  </div>
  </div>
  <div class="col-sm-3"></div>
  <div class="col-sm-2">
  <form action="adminAddProduct.jsp" id="btnform2">
<button type="submit" id="addpro" class="btn"><span>Add Product</span></button>
</form>
  </div>
  </div>
<div>
 
 
</div>
</div>
<div id="vendor" class="tab-pane fade">
     
    </div>
</div>
 <div class="newtable">
<form action="adminViewProduct.jsp">
 <table id="tab1" class="table">
 <thead>
 
 <tr>
 <th class="no-border"></th>
 <th class="no-border">Product List</th>
 <th>Brand</th>
 <th>Category</th>
 <th>Rating</th>
 <th></th>
 <th class="no-border"></th>
 <th class="no-border"></th>
 </tr>
 
 </thead>
 <tbody>
 
 <tr>
 <td class="no-border">
  <div class="round">
    <input type="checkbox" id="checkbox" />
    <label for="checkbox"></label>
  </div>
</td>
 <td class="no-border">Trimmer</td>
 <td>Phillips</td>
 <td>Personal Care</td>
 <td>4.7</td>
 <td><div ><button type="submit" class="button">View</button></div>
 <td class="no-border"><div ><button type="button" class="button">Block</button></div>
 <td class="no-border"><div ><button type="button" class="button">Remove</button></div>
 </tr>
 
 <tr>
 <td class="no-border">
  <div class="round">
    <input type="checkbox" id="checkbox1" />
    <label for="checkbox1"></label>
  </div>
</td>
 <td class="no-border">Shaver</td>
 <td>Braun</td>
 <td>Personal Care</td>
 <td>4.8</td>
 <td><div><button type="submit" class="button">View</button></div>
 <td class="no-border"><div><button type="button" class="button">Block</button></div>
 <td class="no-border"><div ><button type="button" class="button">Remove</button></div>
 </tr> 
 
 <tr>
 <td class="no-border">
  <div class="round">
    <input type="checkbox" id="checkbox2" />
    <label for="checkbox2"></label>
  </div>
</td>
 <td class="no-border">Macbook Pro</td>
 <td>Apple</td>
 <td>Laptop</td>
 <td>4.9</td>
 <td><div><button type="submit" class="button">View</button></div>
 <td class="no-border"><div ><button type="button" class="button">Block</button></div>
 <td class="no-border"><div ><button type="button" class="button">Remove</button></div>
 </tr>
 
 <tr>
 <td class="no-border">
  <div class="round">
    <input type="checkbox" id="checkbox3" />
    <label for="checkbox3"></label>
  </div>
</td>
 <td class="no-border">iMac27</td>
 <td>Apple</td>
 <td>Laptop</td>
 <td>4.6</td>
 <td><div ><button type="submit" class="button">View</button></div>
 <td class="no-border"><div ><button type="button" class="button">Block</button></div>
 <td class="no-border"><div><button type="button" class="button">Remove</button></div>
 </tr>
 
 <tr>
 <td class="no-border">
  <div class="round">
    <input type="checkbox" id="checkbox4" />
    <label for="checkbox4"></label>
  </div>
</td>
 <td class="no-border">Micron Pens</td>
 <td>Sakura Pigma</td>
 <td>Art Supplies</td>
 <td>4.1</td>
 <td><div ><button type="submit" class="button">View</button></div>
 <td class="no-border"><div ><button type="button" class="button">Block</button></div>
 <td class="no-border"><div ><button type="button" class="button">Remove</button></div>
 </tr>
 
 <tr>
 <td class="no-border">
  <div class="round">
    <input type="checkbox" id="checkbox5" />
    <label for="checkbox5"></label>
  </div>
</td>
 <td class="no-border">Paint Markers</td>
 <td>Copic</td>
 <td>Art Supplies</td>
 <td>4.2</td>
 <td><div ><button type="submit" class="button">View</button></div>
 <td class="no-border"><div ><button type="button" class="button">Block</button></div>
 <td class="no-border"><div ><button type="button" class="button">Remove</button></div>
 </tr>
 
 </tbody>
 </table>
</form>
 </div>
</div>
</div>
</div>
</body>
</html>