/**
 * This view is an example list of people.
 */
Ext.define('Sos.jni.view.main.List', {
    extend: 'Ext.grid.Panel',
    xtype: 'mainlist',

    requires: [
        'Sos.jni.store.Personnel'
    ],

    title: 'Personnel',

    store: {
        type: 'personnel'
    },

    columns: [
        { text: '姓名',  dataIndex: 'name' },
        { text: '邮箱', dataIndex: 'email', flex: 1 },
        { text: '电话', dataIndex: 'phone', flex: 1 }
    ],

    listeners: {
        select: 'onItemSelected'
    }
});
