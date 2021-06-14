<head>
	<title>Super Duper Shop</title>

	<link href="/views/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<script src="/views/js/jquery.min.js"></script>
	<link href="/views/css/style.css" rel="stylesheet" type="text/css" media="all" />

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href='http://fonts.googleapis.com/css?family=Ubuntu:400,700' rel='stylesheet' type='text/css'>
	<script type="text/javascript" src="/views/js/move-top.js"></script>
	<script type="text/javascript" src="/views/js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
			});
		});
	</script>
	<script defer src="/views/js/cart.js"></script>

	<!-- start menu -->
	<link href="/views/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />

	<script type="text/javascript" src="/views/js/megamenu.js"></script>

	<script>$(document).ready(function () { $(".megamenu").megamenu(); });</script>


</head>