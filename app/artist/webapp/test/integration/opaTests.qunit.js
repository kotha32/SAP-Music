sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/sumanth/music/artist/test/integration/FirstJourney',
		'com/sumanth/music/artist/test/integration/pages/artistList',
		'com/sumanth/music/artist/test/integration/pages/artistObjectPage'
    ],
    function(JourneyRunner, opaJourney, artistList, artistObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/sumanth/music/artist') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheartistList: artistList,
					onTheartistObjectPage: artistObjectPage
                }
            },
            opaJourney.run
        );
    }
);