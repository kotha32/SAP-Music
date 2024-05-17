sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/sumanth/music/playlist/test/integration/FirstJourney',
		'com/sumanth/music/playlist/test/integration/pages/playlistList',
		'com/sumanth/music/playlist/test/integration/pages/playlistObjectPage'
    ],
    function(JourneyRunner, opaJourney, playlistList, playlistObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/sumanth/music/playlist') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheplaylistList: playlistList,
					onTheplaylistObjectPage: playlistObjectPage
                }
            },
            opaJourney.run
        );
    }
);