
function register() {
    var ucase = new RegExp("[A-Z]+");
    var lcase = new RegExp("[a-z]+");
    var num = new RegExp("[0-9]+");
    var pattern = /^\S+@\S+\.\S+$/;

    var password = $("#Join_Password").val();
    var cpassword = $("#Join_CPassword").val();
    var email = $("#Join_Email").val();
    var name = $("#Join_Name").val();

    if (email == '' || email == undefined) {
        AlertMessage('error', 'Please fill your email', true);
        return false;
    }

    if (name == '' || name == undefined) {
        AlertMessage('error', 'Please fill your name', true);
        return false;
    }

    if (!(pattern.test(email))) {
        AlertMessage('error', 'Please enter valid email', true);
        return false;
    }

    if (!(ucase.test(password) && lcase.test(password) && num.test(password))) {
        AlertMessage('error', 'Use Alphabet and Digits in password', true);
        return false;
    }

    if (!(ucase.test(cpassword) && lcase.test(cpassword) && num.test(cpassword))) {
        AlertMessage('error', 'Use Alphabet and Digits in Confirm Password', true);
        return false;
    }

    if (!(password.length >= 8)) { 
        AlertMessage('error', 'Password length should be 8 characters or above', true);
        return false;
    }
    if (!(cpassword.length >= 8)) {
        AlertMessage('error', 'confirm Password length should be 8 characters or above', true);
        return false;
    }
  
    if (password !== cpassword) {
        AlertMessage('error', 'Confirm Password Is Incorrect, try again', true);
        return false;
    }

}

function signIn() {
    var ucase = new RegExp("[A-Z]+");
    var lcase = new RegExp("[a-z]+");
    var num = new RegExp("[0-9]+");
    var pattern = /^\S+@\S+\.\S+$/;

    var spassword = $("#Sign_Password").val();
    var email = $("#Sign_Email").val();

    if (email == '' || email == undefined) {
        AlertMessage('error', 'Please fill your email', true);
        return false;
    }
    if (!(pattern.test(email))) {
        AlertMessage('error', 'Please enter valid email', true);
        return false;
    }

    if (!(spassword.length >= 8)) {
        AlertMessage('error', 'Password length should be 8 characters or above', true);
        return false;
    }
}

function raiseQuery() {
    var name = $("#Cont_Name").val();
    var email = $("#Cont_Email").val();
    var subject = $("#Cont_Subject").val();
    var message = $("#Cont_Message").val();

    if (name == '' || name == undefined) {
        AlertMessage('error', 'Please fill your name', true);
        return false;
    }
    if (email == '' || email == undefined) {
        AlertMessage('error', 'Please fill your email', true);
        return false;
    }
    if (subject == '' || subject == undefined) {
        AlertMessage('error', 'Please fill your subject', true);
        return false;
    }
    if (message == '' || message == undefined) {
        AlertMessage('error', 'Please fill your message', true);
        return false;
    }

}








