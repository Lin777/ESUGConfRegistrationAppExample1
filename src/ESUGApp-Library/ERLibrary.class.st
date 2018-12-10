Class {
	#name : #ERLibrary,
	#superclass : #WAFileLibrary,
	#category : #'ESUGApp-Library-MDL'
}

{ #category : #'as yet unclassified' }
ERLibrary class >> applicationName [

 ^ 'ESUG Application'

]

{ #category : #updating }
ERLibrary >> esugJs [
	^ self validatorOfRegister
]

{ #category : #updating }
ERLibrary >> selectorsToInclude [
	^ Array with: 'esugJs'
]

{ #category : #updating }
ERLibrary >> validatorForLogin [
	^ '$(function(){
    $("#loginbutton").on("click", function(){
        $("#formLogin").validate();
        $("#email").rules("add", {
            required: true,
            email: true, 
            minlength: 8,
            maxlength:80,
            messages: {
                required: "Please enter your email", 
                email: "The format of email is incorrect", 
                minlenght: "The minimum number of characters allowed is 8", 
                maxlenght: "The maximum number of characters allowed is 80"
            }
        });
        $("#password").rules("add", {
            required: true,
            messages:
            {
                required: "Please enter your password"
            } 
        });
    });
});'
]

{ #category : #updating }
ERLibrary >> validatorOfRegister [
	^ '
 $.validator.addMethod("valueNotEquals", function(value, element, arg){
  return arg !== value;
 }, "Value must not equal arg.");

	$().ready(function() {
    $("#formRegister").validate({
			ignore:"",
			
        rules:
        {
            "days[]": {required: true, maxlength:5}
        },
        messages:
        {
            "days[]": {required: "You must check at least 1 box", maxlength: "Check no more than {0} boxes"}
        }

    });
    $("#firstName").rules("add", {
        required: true,
        messages: {required: "Please enter your First Name"}
    });
    $("#lastName").rules("add", {
        required: true,
        messages: {required: "Please enter your Last Name"}
    });
    $("#email").rules("add", {
        required: true,
        email: true, 
        minlength: 8, 
        maxlength:30,
        messages: {
            required: "Please enter your email", 
            email: "The format of email is incorrect", 
            minlength: "The minimum number of characters allowed is 8", 
            maxlength: "The maximum number of characters allowed is 30"
        }
    });
    $("#password").rules("add", {
        required: true,
        minlength: 8, 
        messages: {
            required: "Please enter your password", 
            minlength: "Your password must have at least 8 characters"
        }
    });
    $("#confirmPassword").rules("add", {
        required: true,
        equalTo: "#password",
        messages: {
            required: "Please confirm your password", 
            equalTo: "Your password does not match"
        }
    });
    $("#address").rules("add", {
        required: true,
        messages: {
            required: "Please enter your contact Address"
        }
    });
    $("#country").rules(  "add", {
        valueNotEquals: "1",
           messages: {
                valueNotEquals: "Please select a Country" 
           } 
        }
    );
    $("#city").rules("add", {
        required: true,
        messages: {
            required: "Please enter your contact City"
        }
    });
    $("#province").rules("add", {
        required: true,
        messages: {
            required: "Please enter your contact Province/State"
        }
    });
    $("#postal").rules("add", {
        required: true,
        messages: {
            required: "Please enter your contact Postal/ZipCode"
        }
    });
    
    /*$("#facebookURL").rules("add", {
        required: true,
        messages: {}
    });
    $("#twitterURL").rules("add", {
        required: true,
        messages: {}
    });
    $("#homePage").rules("add", {
        required: true,
        messages: {}
    });

    $("days[]").rules("add", {
        required: true,
        maxlength:5,
        messages: {
            required: "You must check at least 1 box", 
            maxlength: "Check no more than {0} boxes"
        }
    });*/
    $("#orgName").rules("add", {
        required: true,
        messages: {
            required: "Please enter your Organization Name"
        }
    });
    $("#orgAddress1").rules("add", {
        required: true,
        messages: {
            required: "Please enter your Organization Address"
        }
    });
    $("#orgCity").rules("add", {
        required: true,
        messages: {
            required: "Please enter your Organization City"
        }
    });
    $("#orgCountry").rules(  "add", {
        valueNotEquals: "1",
           messages: {
                valueNotEquals: "Please select a Country" 
           } 
        }
    );
    $("#orgProvince").rules("add", {
        required: true,
        messages: {
            required: "Please enter your Organization Province"
        }
    });
    $("#orgPostal").rules("add", {
        required: true,
        messages: {
            required: "Please enter your Code Postal of your Organization"
            }
    });
 });'
]

{ #category : #updating }
ERLibrary >> validatorOfRegisterAsGroupManager [
	^ ' $().ready(function() {
    $("#formRegisterAsGroup").validate({
    });
    $("#firstNameGM").rules("add", {
        required: true,
        messages: {required: "Please enter your First Name"}
    });
    $("#lastNameGM").rules("add", {
        required: true,
        messages: {required: "Please enter your Last Name"}
    });
    $("#registerEmailGM").rules("add", {
        required: true,
        email: true, 
        minlength: 8, 
        maxlength:30,
        messages: {
            required: "Please enter your email", 
            email: "The format of email is incorrect", 
            minlength: "The minimum number of characters allowed is 8", 
            maxlength: "The maximum number of characters allowed is 30"
        }
    });
    $("#registerPasswordGM").rules("add", {
        required: true,
        minlength: 8, 
        messages: {
            required: "Please enter your password", 
            minlength: "Your password must have at least 8 characters"
        }
    });
    $("#registerConfirmPasswordGM").rules("add", {
        required: true,
        equalTo: "#registerPasswordGM",
        messages: {
            required: "Please confirm your password", 
            equalTo: "Your password does not match"
        }
    });
    $("#organizationNameGM").rules("add", {
        required: true,
        messages: {
            required: "Please enter your Organization Name"
        }
    });
    $("#organizationAddressGM").rules("add", {
        required: true,
        messages: {
            required: "Please enter your Organization Address"
        }
    });
    $("#organizationCityGM").rules("add", {
        required: true,
        messages: {
            required: "Please enter your Organization City"
        }
    });
    $("#organizationProvinceStateGM").rules("add", {
        required: true,
        messages: {
            required: "Please enter your Organization Province"
        }
    });
    $("#organizationPostalGM").rules("add", {
        required: true,
        messages: {
            required: "Please enter your Code Postal of your Organization"
            }
    });

 });'
]
