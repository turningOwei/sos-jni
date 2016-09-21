/**
 * This class is the main view for the application. It is specified in app.js as the
 * "mainView" property. That setting automatically applies the "viewport"
 * plugin causing this view to become the body element (i.e., the viewport).
 *
 * TODO - Replace this content of this view to suite the needs of your application.
 */
Ext.define('Sos.jni.view.main.Main', {
    extend: 'Ext.tab.Panel',
    xtype: 'app-main',
    requires: [
        'Ext.plugin.Viewport',
        'Ext.window.MessageBox',

        'Sos.jni.view.main.MainController',
        'Sos.jni.view.main.MainModel',
        'Sos.jni.model.DeviceModel',
        'Sos.jni.view.main.List',
        'Sos.jni.view.main.SmokeSensorPanel',
        'Sos.jni.view.main.MainPanel'
    ],

    controller: 'main',
    viewModel: 'main',

    ui: 'navigation',

    tabBarHeaderPosition: 1,
    titleRotation: 0,
    tabRotation: 0,

    header: {
        layout: {
            align: 'stretchmax'
        },
        title: {
            bind: {
                text: '{appName}'
            },
            flex: 0
        },
        iconCls: 'fa-th-list'
    },

    tabBar: {
        flex: 1,
        layout: {
            align: 'stretch',
            overflowHandler: 'none'
        }
    },

    responsiveConfig: {
        tall: {
            headerPosition: 'top'
        },
        wide: {
            headerPosition: 'left'
        }
    },

    defaults: {
        bodyPadding: 20,
        tabConfig: {
            plugins: 'responsive',
            responsiveConfig: {
                wide: {
                    iconAlign: 'left',
                    textAlign: 'left'
                },
                tall: {
                    iconAlign: 'top',
                    textAlign: 'center',
                    width: 120
                }
            }
        }
    },

    items: [{//mainpanel
    	title: '测试',
        iconCls: 'fa-refresh',
        // The following grid shares a store with the classic version's grid as well!
        items: [{
        	id	 : 'mainpanelId',
            xtype: 'mainpanel'
        }],
        autoScroll : true,
        listeners	: {
        	activate : 'mainPanelActivate'
        }
    },/* {
        title: 'sos实时',
        iconCls: 'fa-refresh',
        // The following grid shares a store with the classic version's grid as well!
        items: [{
        	id	 : 'realTimePanelId',
            xtype: 'mainlist'
        }],
        listeners: {
        	//由controller控制
        	activate : 'sosPanelActivate'
        }
    },{
    	title: '烟感实时',
        iconCls: 'fa-refresh',
        // The following grid shares a store with the classic version's grid as well!
        items: [{
        	id	 : 'smokeSensorPanelId',
            xtype: 'smokeSensorPanel'
        }],
        listeners: {
        	//由controller控制
        	activate : 'smokesensorPanelActivate'
        }
    },*/{
        title: '说明',
        iconCls: 'fa-user',
        bind: {
            html: '{loremIpsum}'
        }
    }]
    
});
