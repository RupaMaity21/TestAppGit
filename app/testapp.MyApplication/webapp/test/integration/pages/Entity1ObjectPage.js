sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'testapp.MyApplication',
            componentId: 'Entity1ObjectPage',
            contextPath: '/Entity1'
        },
        CustomPageDefinitions
    );
});