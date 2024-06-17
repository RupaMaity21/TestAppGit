sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'testapp/MyApplication/test/integration/FirstJourney',
		'testapp/MyApplication/test/integration/pages/Entity1List',
		'testapp/MyApplication/test/integration/pages/Entity1ObjectPage'
    ],
    function(JourneyRunner, opaJourney, Entity1List, Entity1ObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('testapp/MyApplication') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEntity1List: Entity1List,
					onTheEntity1ObjectPage: Entity1ObjectPage
                }
            },
            opaJourney.run
        );
    }
);