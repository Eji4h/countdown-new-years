<!DOCTYPE html>
<html>

<body>

	<?php
	date_default_timezone_set("Asia/Bangkok");
	$target_year = "2024";

	do {
		sleep(1);
		echo date("Y/m/d h:i:sa");
		$current_year = date("Y");
	} while ($current_year !== $target_year);

	echo "\n";
	echo "Happy New Year $target_year !!!";
	?>

</body>

</html>