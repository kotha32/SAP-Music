sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.sumanth.music.playlist',
            componentId: 'playlistObjectPage',
            contextPath: '/playlist'
        },
        CustomPageDefinitions
    );
});