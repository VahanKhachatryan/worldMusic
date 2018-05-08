
jQuery(document).ready(function ($) {
	$('.music-player-list').ttwMusicPlayer(myPlaylist, {
		buyText:'DOWNLOAD',
		tracksToShow:3,
		autoplay:true,
		ratingCallback:function(index, playlistItem, rating){
			//some logic to process the rating, perhaps through an ajax call
		},
		jPlayer:{
			swfPath: "js/Jplayer.swf",
			supplied: "mp3",
			volume:  0.8,
			wmode:"window",
			solution: "html,flash",
			errorAlerts: true,
			warningAlerts: false
		}
	});
});