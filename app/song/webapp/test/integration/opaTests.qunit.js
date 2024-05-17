sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/sumanth/music/song/test/integration/FirstJourney',
		'com/sumanth/music/song/test/integration/pages/songList',
		'com/sumanth/music/song/test/integration/pages/songObjectPage'
    ],
    function(JourneyRunner, opaJourney, songList, songObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/sumanth/music/song') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThesongList: songList,
					onThesongObjectPage: songObjectPage
                }
            },
            opaJourney.run
        );
    }
);