sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'gameappkvh/test/integration/FirstJourney',
		'gameappkvh/test/integration/pages/StudentList',
		'gameappkvh/test/integration/pages/StudentObjectPage',
		'gameappkvh/test/integration/pages/FavoriteGameObjectPage'
    ],
    function(JourneyRunner, opaJourney, StudentList, StudentObjectPage, FavoriteGameObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('gameappkvh') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheStudentList: StudentList,
					onTheStudentObjectPage: StudentObjectPage,
					onTheFavoriteGameObjectPage: FavoriteGameObjectPage
                }
            },
            opaJourney.run
        );
    }
);