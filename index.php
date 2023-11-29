<?php 
include 'assets/php/config.php'; 
include 'assets/class/Functions.class.php'; 
include 'assets/class/Itens.class.php'; 

if(isset($_GET['directory']) && $_GET['directory'] != 'inicio'){
	$url = $_GET['directory'] == 'pagina' ? $_GET['url'] : $_GET['directory'];
	$pageSql = $pdo->prepare("SELECT * FROM paginas WHERE status='true' AND url=:url");
	$pageSql->bindParam(':url', $url);
	$pageSql->execute();
	$pageRow = $pageSql->fetch(PDO::FETCH_ASSOC);
	if(file_exists('assets/pages/'.$url.'.php')){
		include 'assets/pages/'.$url.'.php';
	}else if($pageSql->rowCount() >= 1){
		include 'assets/pages/pagina.php';
	}else{
		include 'assets/pages/erro.php';
	}
}else{
	include 'assets/pages/inicio.php';
} 
?>