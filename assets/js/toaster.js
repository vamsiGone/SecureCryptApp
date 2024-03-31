function AlertMessage(errorType, errorMessage, isHideAfter) {//  errorType => 'info', 'warning', 'success', 'error'

    var errorTypes = ['info', 'warning', 'success', 'error'];


    if (typeof (isHideAfter) !== 'boolean')
        isHideAfter = false;

    errorMessage = $.trim(errorMessage) || '';

    if (errorMessage != '') {

        if (jQuery.inArray(errorType.toString().toLowerCase(), errorTypes) != '-1') {
            toastr.options = {
                "closeButton": true,
                "debug": false,
                "newestOnTop": true,
                "progressBar": true,
                "positionClass": "toast-top-right",
                "preventDuplicates": true,
                "showDuration": "3000",
                "hideDuration": "1000",
                "timeOut": "0",
                "extendedTimeOut": "1000",
                "showEasing": "swing",
                "hideEasing": "linear",
                "showMethod": "fadeIn",
                "hideMethod": "fadeOut"
            }
            toastr[errorType](errorMessage);
            setTimeout(function () { }, 3000); // added delay to display the toastr
        }
    }
}