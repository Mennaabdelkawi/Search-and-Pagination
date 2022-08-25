<?php
include('config.php');
$per_page = 5; 
$page     = (isset($_GET['page']) && is_numeric($_GET['page'])) ? $_GET['page'] : 1;


//getting table contents
$start = ($page-1)*$per_page;
$sql   =  "SELECT course_name,
course_description, prof_name, dep_name FROM course
INNER JOIN professor ON course.prof_id=professor.prof_id
INNER JOIN department ON course.dep_id=department.dep_id 
 limit $start,$per_page";
$rsd   = $connection->query($sql);
?>

</head>
    <body>
        
        <form action="index.php" method="post">
 <table>
            <table width = 90%>
                <tr>
                    <th>Course Name</th>
                    <th>Course Description</th>
                    <th>Professor Name</th>
                    <th>Department Name</th>
                </tr>

     
                <?php while($row = $rsd->fetch_array()):?>
                <tr>
                    <td><?php echo $row['course_name'];?></td>
                    <td><?php echo $row['course_description'];?></td>
                    <td><?php echo $row['prof_name'];?></td>
                    <td><?php echo $row['dep_name'];?></td>
                </tr>
                <?php endwhile;?>
            </table>
            </form>
        
        </body>
    </html>