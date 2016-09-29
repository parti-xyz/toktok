$(function () {
    // Pass authenticity_token
    var params = '[name="authenticity_token"]';
    // Set global settings
    $.Redactor.settings = {
        //plugins: ['source', 'fullscreen', 'textdirection', 'clips'],
        imageUpload: '/redactor2_rails/images',
        imageUploadFields: params,
        fileUpload: '/redactor2_rails/files',
        fileUploadFields: params,
        lang: 'ko',
        toolbarFixed: true,
        buttonsHide: ['file'],
        minHeight: 200
    };
    // Initialize Redactor
    $('.redactor').redactor({
        plugins: ['alignment']
    });
});
