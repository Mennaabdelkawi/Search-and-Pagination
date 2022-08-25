<?php
include('config.php');
$per_page = 5; 

//getting number of rows and calculating no of pages
$sql    = "select count(*) from course";
$result = $connection->query($sql);
$count  = $result->fetch_row();
$pages  = ceil($count[0] / $per_page);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
	<head>
		<title>PHP Dev Zone : Pagination Using Mysql and jQuery </title>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.0/jquery.min.js"></script>
		<script type="text/javascript" src="pagination.js"></script>	
		<link rel="stylesheet" href="style.css">
	</head>
	<body>
	<script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("content");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
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
		<div align="center">
       
			  <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." > <br><br><br>
                               
		 	<div id="content" ></div>
			<table width="800px">
				<tr> 
					<td>
						<ul id="pagination">
							<?php
							//Show page links
							for ($i = 1; $i <= $pages; $i++) {
								echo '<li id="'.$i.'">'.$i.'</li>';
							} ?>
				       </ul>	
					</td>
				</tr>
			</table>
			<div id="loading"></div>
		</div> 
	</body>
</html>