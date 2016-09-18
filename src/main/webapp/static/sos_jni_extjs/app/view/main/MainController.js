/**
 * This class is the controller for the main view for the application. It is specified as
 * the "controller" of the Main view class.
 *
 * TODO - Replace this content of this view to suite the needs of your application.
 */
Ext.define('Sos.jni.view.main.MainController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.main',

    onItemSelected: function (sender, record) {
        //Ext.Msg.confirm('确定', 'Are you sure?', 'onConfirm', this);
    },
    
    onConfirm: function (choice) {
        if (choice === 'yes') {
            //
        }
    },
    
    sosPanelActivate : function(newActiveItem , thiz , oldActiveItem , eOpts){
    	/*Ext.Ajax.request({
    	     url: 'http://localhost:8080/sos_jni/sos/deviceInfo',

    	     success: function(response, opts) {
    	         var obj = Ext.decode(response.responseText);
    	         //console.dir(obj);
    	         console.log(newActiveItem);
    	     },

    	     failure: function(response, opts) {
    	         console.log('server-side failure with status code ' + response.status);
    	     }
    	 });*/
    	
    	var runner = new Ext.util.TaskRunner(),
        task;

	    task = runner.newTask({
	        run: function() {
	        	//console.log(newActiveItem);
	        },
	        interval: 1000
	    });

		//task.start();
	},
	
});
