/**
 * @license Copyright (c) 2003-2014, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
	
	config.toolbarGroups = [
	                        { name: 'clipboard',   groups: [ 'clipboard', 'undo' ] },
	                        { name: 'editing',     groups: [ 'find', 'selection', 'spellchecker' ] },
	                        { name: 'links' },
	                        { name: 'insert' },
	                        { name: 'forms' },
	                        { name: 'tools' },
	                        { name: 'document',    groups: [ 'mode', 'document', 'doctools' ] },
	                        { name: 'others' },
	                        '/',
	                        { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
	                        { name: 'paragraph',   groups: [ 'list', 'indent', 'blocks', 'align' ] },
	                        { name: 'styles' },
	                        { name: 'colors' },
	                        { name: 'about' }
	                    ];
	
	
	config.filebrowserBrowseUrl = '/LMS/jquery-plugin/ckfinder/ckfinder.html';
    config.filebrowserImageBrowseUrl = '/LMS/jquery-plugin/ckfinder/ckfinder.html?type=Images';
    config.filebrowserFlashBrowseUrl = '/LMS/jquery-plugin/ckfinder/ckfinder.html?type=Flash';
    config.filebrowserUploadUrl = '/LMS/jquery-plugin/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files';
    config.filebrowserImageUploadUrl = '/LMS/jquery-plugin/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images';
    config.filebrowserFlashUploadUrl = '/LMS/jquery-plugin/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash';
	
};
