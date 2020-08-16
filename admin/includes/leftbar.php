<head>
<style>
	.ts-sidebar{
		background-color: rgb(236, 236, 236);
	}
	.side-bar-list{
		padding: 5px;
		color: black;
	}
	.item-text{
		color: black;
	}
	.ts-sidebar-menu > .open > a {
  background: #ffffff;
  border-left: 3px solid #37a6c4;
}
</style>
</head>
<body>
	<nav class="ts-sidebar" >
			<ul class="ts-sidebar-menu">
				<li class="ts-label"style="padding:10px;">Admin Panel</li>
				<li class="side-bar-list"><a href="dashboard.php"><i class="fa fa-dashboard"></i> <span class="item-text">Dashboard</span></a></li>
        <li class="side-bar-list"><a href="#"><i class="fa fa-tint"></i> <span class="item-text">Blood Group</span></a>
            <ul>
              <li class="side-bar-list"><a href="add-bloodgroup.php"> <i class="fa fa-plus"></i><span class="item-text"> Add Blood Group</span></a></li>
              <li class="side-bar-list"><a href="manage-bloodgroup.php"> <i class="fa fa-edit"></i> <span class="item-text">Manage Blood Group</span></a></li>
            </ul>
         </li>
				   <li class="side-bar-list"><a href="#"><i class="fa fa-files-o"></i><span class="item-text">Donor</span></a>
            <ul>
							<li class="side-bar-list"><a href="add-donor.php"><i class="fa fa-plus"></i> <span class="item-text">Add Donor</span></a></li>
							<li class="side-bar-list"><a href="donor-list.php"><i class="fa fa-users"></i> <span class="item-text">List of Donor</span> </a></li>
            </ul>
					 </li>

				<li class="side-bar-list"><a href="manage-conactusquery.php"><i class="fa fa-desktop"></i><span class="item-text"> Conatct Query</span></a></li>

				<li class="side-bar-list"><a href="#"><i class="fa fa-edit"></i> <span class="item-text">Manage Site</span></a>
            <ul>
							<li class="side-bar-list"><a href="manage-pages.php"><i class="fa fa-files-o"></i><span class="item-text"> Manage Pages</span></a></li>
							<li class="side-bar-list"><a href="update-contactinfo.php"><i class="fa fa-files-o"></i> <span class="item-text">Update Contact Info</span></a></li>
            </ul>
         </li>


			</ul>
		</nav>
	</body>
