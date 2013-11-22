<?php 
	include_once 'common_service.php';
	$action = $_REQUEST["action"];
	//商品一览页面请求的数据
	if($action=="list"){
		$page = $_REQUEST["page"];
		$rows = $_REQUEST["rows"];
		$sql = "select * from shop_info ";
		$result = mysql_query($sql,$con);
		$json = array();
		$json["total"] =  mysql_num_rows($result);
		$sql = $sql." order by id desc";
		$sql = $sql." limit ".($page-1)*$rows.",".$rows;
		$result = mysql_query($sql,$con);
		$json["rows"] = array();
		while($row=mysql_fetch_assoc($result)){
			$row['img']=$base.$row['img'];
			$row['sendservicinfo_original']="";
			$row['fixservicinfo_original']="";
			$row['pointinfo_original']="";
			
			array_push($json["rows"], $row);
  		}
		echo json($json);
	}else if($action == "add"){
		//普通参数获取
		$name = $_REQUEST["name"];
		$address = $_REQUEST["address"];
		$installphone = $_REQUEST["installphone"];
		$servicephone = $_REQUEST["servicephone"];
		$longitude = $_REQUEST["longitude"];
		$latitude = $_REQUEST["latitude"];
		$gLongitude = $_REQUEST["gLongitude"];
		$gLatitude = $_REQUEST["gLatitude"];
		$sendservicinfo_original = $_REQUEST["sendservicinfo"];
		$sendservicinfo = addslashes(addslashes($_REQUEST["sendservicinfo"]));
		$fixservicinfo_original = $_REQUEST["fixservicinfo"];
		$fixservicinfo = addslashes(addslashes($_REQUEST["fixservicinfo"]));
		$pointinfo_original = $_REQUEST["pointinfo"];
		$pointinfo = addslashes(addslashes($_REQUEST["pointinfo"]));
		$time = strval(time());//当前时间戳
		if(isset($_FILES["img"])&&$_FILES["img"]["name"]!=""){
			$arr = explode(".",$_FILES["img"]["name"]);
			$filetype = $arr[count($arr)-1];
			$filename = $time.".".$filetype;
			move_uploaded_file($_FILES["img"]["tmp_name"],"./upload/".$filename);
			$img = "/admin/upload/".$filename;
		}
		$sql = "insert into shop_info(name,address,installphone,servicephone,longitude,latitude,gLongitude,gLatitude,sendservicinfo,fixservicinfo,pointinfo,img,sendservicinfo_original,fixservicinfo_original,pointinfo_original) values('$name','$address','$installphone','$servicephone','$longitude','$latitude','$gLongitude','$gLatitude','$sendservicinfo','$fixservicinfo','$pointinfo','$img','$sendservicinfo_original','$fixservicinfo_original','$pointinfo_original');";
		mysql_query($sql,$con);
		header("Location:./shopinfo_list.php");
	}else if($action=="delete"){
		$sql = "delete from shop_info where id=".$_REQUEST['id'];
		mysql_query($sql);
		echo "success";
	}else if($action == "edit"){
		//普通参数获取
		$id = $_REQUEST["id"];
		$name = $_REQUEST["name"];
		$address = $_REQUEST["address"];
		$installphone = $_REQUEST["installphone"];
		$servicephone = $_REQUEST["servicephone"];
		$longitude = $_REQUEST["longitude"];
		$latitude = $_REQUEST["latitude"];
		$gLongitude = $_REQUEST["gLongitude"];
		$gLatitude = $_REQUEST["gLatitude"];
		$sendservicinfo_original = $_REQUEST["sendservicinfo"];
		$sendservicinfo = addslashes(addslashes($_REQUEST["sendservicinfo"]));
		$fixservicinfo_original = $_REQUEST["fixservicinfo"];
		$fixservicinfo = addslashes(addslashes($_REQUEST["fixservicinfo"]));
		$pointinfo_original = $_REQUEST["pointinfo"];
		$pointinfo = addslashes(addslashes($_REQUEST["pointinfo"]));
		
		$sql = "update shop_info set name='$name',address='$address',installphone='$installphone',servicephone='$servicephone',longitude='$longitude',latitude='$latitude',gLongitude='$gLongitude',gLatitude='$gLatitude',sendservicinfo='$sendservicinfo',fixservicinfo='$fixservicinfo',pointinfo='$pointinfo',sendservicinfo_original='$sendservicinfo_original',fixservicinfo_original='$fixservicinfo_original',pointinfo_original='$pointinfo_original' where id=$id";
		mysql_query($sql,$con);
		header("Location:./shopinfo_list.php");
	}
?>

