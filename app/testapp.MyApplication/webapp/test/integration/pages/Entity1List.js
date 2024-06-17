sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'testapp.MyApplication',
            componentId: 'Entity1List',
            contextPath: '/Entity1'
        },
        CustomPageDefinitions
    );
});