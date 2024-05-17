sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/sumanth/music/user/test/integration/FirstJourney',
		'com/sumanth/music/user/test/integration/pages/userList',
		'com/sumanth/music/user/test/integration/pages/userObjectPage'
    ],
    function(JourneyRunner, opaJourney, userList, userObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/sumanth/music/user') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheuserList: userList,
					onTheuserObjectPage: userObjectPage
                }
            },
            opaJourney.run
        );
    }
);