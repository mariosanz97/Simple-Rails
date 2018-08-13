function myFunction() {
	if($(".expander").hasClass("opened")) {
		$(".expander").slideUp().removeClass("opened");
		} else {
			$(".expander").slideDown().addClass("opened");
		}
	}
