/*
	For Edit This File Please Read Documentation
*/

var myPlaylist = [
	{
		mp3:'music/1.mp3',
		title:'Missing You',
		artist:'Alexander Doe feat. Morina Jackson',
		rating:5,
		buy:'#',
		price:'17.99',
		duration:'0:38',
		cover:'music/1.jpg'	
	}
];
jQuery(document).ready(function ($) {
	$('.music-single').ttwMusicPlayer(myPlaylist, {
		currencySymbol:'$',
		buyText:'BUY',
		tracksToShow:3,
		autoplay:true,
		ratingCallback:function(index, playlistItem, rating){
			//some logic to process the rating, perhaps through an ajax call
		},
		jPlayer:{
			swfPath: "http://www.jplayer.org/2.7.0/js/",
			supplied: "mp3",
			volume:  0.8,
			wmode:"window",
			solution: "html,flash",
			errorAlerts: true,
			warningAlerts: true
		}
	});
});