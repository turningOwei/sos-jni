/**
 * This view is an example list of people.
 */
Ext.define('Sos.jni.view.main.List', {
    extend: 'Ext.grid.Panel',
    xtype: 'mainlist',

    requires: [
        'Sos.jni.store.Device'
    ],

    title: '设备信息',

    store: {
        type: 'device'
    },

    columns: [
        { text: '设备ID', 		dataIndex: 'deviceId',			width:100},
        { text: '设备IP', 		dataIndex: 'deviceIp', 			width:100,		flex: 1 },
        { text: '设备类型', 		dataIndex: 'deviceType', 		flex: 1 },
        { text: '设备当前状态', 	dataIndex: 'deviceStatus', 		flex: 1 },
        { text: '设备音量', 		dataIndex: 'deviceVolume', 		flex: 1 },
        { text: '设备其他信息', 	dataIndex: 'deviceOtherInfo', 	flex: 1 }
    ],

    listeners: {
        select: 'onItemSelected',
        rowclick : function( thiz , record , tr , rowIndex , e , eOpts){
        	console.log(this.getStore());
        },
        afterlayout :function( thiz , layout , eOpts ) {
        	//console.log(this.getStore());
        }
    }
});
