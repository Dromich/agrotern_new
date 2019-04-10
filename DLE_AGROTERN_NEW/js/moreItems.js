$(document).ready(function () {

	function getMoreItems(page) {
		var nextPage = page
	
		$.ajax({
			url: window.location.pathname + 'page/' + nextPage, //для категорій потрібно вивсети спочатку шорт урл категорії
			success: function (data) {
				console.log(nextPage)
				//$('#ajax-next-page').remove();
				let ajxcont = '<div class="block_catalog">' + $('#dle-content', data).html() + '</div>';
				$('#main_cont_1').append(
	
					ajxcont
	
				);
				
	
				split_register();
			},
			error: function (data) {
				$(".button_still").remove();
	
	
			}
		})
		nextPage++
	
		setTimeout(() => {
	
			if (nextPage < 5) {
				
				getMoreItems(nextPage)
			}
	
		}, 1200);
	
	}
	
	
	setTimeout(() => {
	
		getMoreItems(2)
	
	}, 1000);
	
	
	});
	