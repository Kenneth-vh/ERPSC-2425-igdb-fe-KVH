sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'gameappkvh',
            componentId: 'FavoriteGameObjectPage',
            contextPath: '/Student/to_favos'
        },
        CustomPageDefinitions
    );
});