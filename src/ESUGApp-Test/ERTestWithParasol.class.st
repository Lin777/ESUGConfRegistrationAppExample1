Class {
	#name : #ERTestWithParasol,
	#superclass : #TestCase,
	#instVars : [
		'driver',
		'serverAdaptor',
		'userRegistered',
		'store'
	],
	#category : #'ESUGApp-Test'
}

{ #category : #accessing }
ERTestWithParasol >> baseURL [
	^ 'http://localhost:8080/ESUG'
]

{ #category : #accessing }
ERTestWithParasol >> defaultStore [
	^ SDMemoryStore new
]

{ #category : #registerTests }
ERTestWithParasol >> firstStepSuccesfull [
	"| firstName lastName email password confirmPassword next1 actions |
	
	actions := BPActions driver: driver .
	
	firstName := driver findElementByID: 'firstName'.
	lastName := driver findElementByID: 'lastName'.
	email := driver findElementByID: 'registerEmail'.
	password := driver findElementByID: 'registerPassword'.
	confirmPassword := driver findElementByID: 'confirmPassword'.
	next1 := driver findElementByID: 'next1'.
	
	actions moveToElement: firstName .
	actions click.
	actions perform .

	firstName sendKeys: 'Andreina'.
	lastName sendKeys: 'Cota Vidaurre'.
	email sendKeys: 'andreina@gmail.com'.
	password sendKeys: '12345678'.
	confirmPassword sendKeys: '12345678'.
	next1 click .
"
]

{ #category : #accessing }
ERTestWithParasol >> setUp [
	"self warmUpModels .
	userRegistered := ERUser testUser: 'registeredUser'.
	serverAdaptor := (Smalltalk at: #ZnZincServerAdaptor) startOn: 8080.
	driver := BPRemoteWebDriver withCapabilities: BPDesiredCapabilities chrome.
	driver get: self baseURL "
]

{ #category : #accessing }
ERTestWithParasol >> tearDown [
	"self tearDownModels .
	driver quit.
	serverAdaptor stop."
]

{ #category : #'as yet unclassified' }
ERTestWithParasol >> tearDownModels [
	"ERAfiliation do: [ :each | [each delete] on: Error do: [] ].
	ERAfiliation coolDown .
	
	ERAccount do: [ :each | [each delete] on: Error do: [] ].
	ERAccount coolDown .
	
	ERConference do: [ :each | [each delete] on: Error do: [] ].
	ERConference coolDown .
	
	ERCoupon do: [ :each | [each delete] on: Error do: [] ].
	ERCoupon coolDown .
	
	ERAssistance  do: [ :each | [each delete] on: Error do: [] ].
	ERAssistance coolDown .
	
	ERInvoice   do: [ :each | [each delete] on: Error do: [] ].
	ERInvoice coolDown .
	
	ERPrice  do: [ :each | [each delete] on: Error do: [] ].
	ERPrice coolDown .
	
	ERUser   do: [ :each | [each delete] on: Error do: [] ].
	ERUser coolDown .
	
	ERAccount  do: [:each | [each delete] on: Error do: [] ].
	ERAccount  allSubclassesDo: [ :each | each coolDown ].
	
	Smalltalk garbageCollectMost "
]

{ #category : #tests }
ERTestWithParasol >> testLoginErrorWhenNoTextFieldIsEntered [
	|emailError passwordError signIn|
	
	signIn := driver findElementByID: 'loginbutton'.
	signIn click .
	
	emailError := driver findElementByID: 'email-error'.
	passwordError := driver findElementByID: 'password-error'.
	
	self assert: emailError getText = 'Please enter your email'.
	self assert: passwordError getText = 'Please enter your password'.
]

{ #category : #loginTests }
ERTestWithParasol >> testLoginErrorWhenThePasswordFieldIsNotEntered [
	|email passwordError signIn|
	
	email := driver findElementByID: 'email'.
	signIn := driver findElementByID: 'loginbutton'.
	email sendKeys: 'luchex@gmail.com'.
	signIn click .
	
	passwordError := driver findElementByID: 'password-error'.
	self assert: passwordError getText = 'Please enter your password'.
]

{ #category : #loginTests }
ERTestWithParasol >> testLoginRegisteredUser [
	|email password signIn|
	userRegistered save.
	email := driver findElementByID: 'email'.
	password := driver findElementByID: 'password'.
	signIn := driver findElementByID: 'loginbutton'.
	email sendKeys: userRegistered email.
	password sendKeys: '12345678'.
	signIn click .
	self assert: (driver findElementByID: 'userSessionEmail') getText = userRegistered email.
]

{ #category : #loginTests }
ERTestWithParasol >> testLoginUnregisteredUser [
	|email password signIn message|
	email := driver findElementByID: 'email'.
	password := driver findElementByID: 'password'.
	signIn := driver findElementByID: 'loginbutton'.
	email sendKeys: 'noValid@gmail.com'.
	password sendKeys: '1234'.
	signIn click .
	message := driver findElementByID: 'loginAlert'.
	self assert: message getText = 'Login failed.'.
]

{ #category : #registerTests }
ERTestWithParasol >> testRegisterErrorWhenTheAddressFieldIsEmpty [
	| actions contactAddress contactCity contactProvince contactPostal contactFacebook contactTwitter contactHomePage next2 addressError |
	
	actions := BPActions driver: driver .
	
	self firstStepSuccesfull.
	
	contactAddress := driver findElementByID: 'contactAddress' .
	contactCity := driver findElementByID: 'contactCity'.
	contactProvince := driver findElementByID: 'contactProvince'.
	contactPostal := driver findElementByID: 'contactPostal'.
	contactFacebook := driver findElementByID: 'contactFacebook'  .
	contactTwitter := driver findElementByID: 'contactTwitter'.
	contactHomePage := driver findElementByID: 'contactHomePage'. 
	next2 := driver findElementByID: 'next2'. 
	
	actions moveToElement: contactAddress.
	actions click.
	actions perform .
"	contactAddress sendKeys: 'Av. America'.
"	contactCity sendKeys: 'Cochabamba'.
	contactProvince sendKeys: 'Cercado'.
	contactPostal sendKeys: '0000'.

	actions moveToElement: contactFacebook .
	actions click.
	actions perform .

	contactFacebook sendKeys: 'https://facebook.com'.
	contactTwitter sendKeys: 'twitter.com'.
	actions moveToElement: contactHomePage  .
	actions click.
	actions perform .
	contactHomePage sendKeys: 'medium.com'.

	actions moveToElement: next2 .
	actions click.
	actions perform .
	next2 click .
	
	addressError := driver findElementByID: 'contactAddress-error'.

	self assert: addressError  getText = 'Please enter your contact Address'.
]

{ #category : #registerTests }
ERTestWithParasol >> testRegisterErrorWhenTheConfirmPasswordFieldDoesNotMatch [
	| actions firstName lastName email emailError password confirmPassword next1 |
	
	actions := BPActions driver: driver .
	
	firstName := driver findElementByID: 'firstName'.
	lastName := driver findElementByID: 'lastName'.
	email := driver findElementByID: 'registerEmail'.
	password := driver findElementByID: 'registerPassword'.
	confirmPassword := driver findElementByID: 'confirmPassword'.
	next1 := driver findElementByID: 'next1'.
	
	actions moveToElement: firstName .
	actions click.
	actions perform .

	firstName sendKeys: 'Andreina'.
	email sendKeys: 'Andreina@gmail.com'.
	lastName sendKeys: 'Cota Vidaurre'.
	password sendKeys: '12345678'.
	confirmPassword sendKeys: '1234567'.
	next1 click.
	
	emailError := driver findElementByID: 'confirmPassword-error'.
	
	self assert: emailError  getText = 'Your password does not match'.
]

{ #category : #registerTests }
ERTestWithParasol >> testRegisterErrorWhenTheEmailFieldFormatIsIncorrect [
	| actions firstName lastName email emailError password confirmPassword next1 |
	
	actions := BPActions driver: driver .
	
	firstName := driver findElementByID: 'firstName'.
	lastName := driver findElementByID: 'lastName'.
	email := driver findElementByID: 'registerEmail'.
	password := driver findElementByID: 'registerPassword'.
	confirmPassword := driver findElementByID: 'confirmPassword'.
	next1 := driver findElementByID: 'next1'.
	
	actions moveToElement: firstName .
	actions click.
	actions perform .

	firstName sendKeys: 'Andreina'.
	lastName sendKeys: 'Cota Vidaurre'.
	email sendKeys: 'thisIsAnErrorExampleOfEmail.com'.
	password sendKeys: '12345678'.
	confirmPassword sendKeys: '12345678'.
	next1 click .
	
	emailError := driver findElementByID: 'registerEmail-error'.
	
	self assert: emailError  getText = 'The format of email is incorrect'.
]

{ #category : #registerTests }
ERTestWithParasol >> testRegisterErrorWhenTheEmailFieldIsLessThanEight [
	| actions firstName lastName email emailError password confirmPassword next1 |
	
	actions := BPActions driver: driver .
	
	firstName := driver findElementByID: 'firstName'.
	lastName := driver findElementByID: 'lastName'.
	email := driver findElementByID: 'registerEmail'.
	password := driver findElementByID: 'registerPassword'.
	confirmPassword := driver findElementByID: 'confirmPassword'.
	next1 := driver findElementByID: 'next1'.
	
	actions moveToElement: firstName .
	actions click.
	actions perform .

	firstName sendKeys: 'Andreina'.
	email sendKeys: 's@df.co'.
	lastName sendKeys: 'Cota Vidaurre'.
	password sendKeys: '12345678'.
	confirmPassword sendKeys: '12345678'.
	next1 click.
	
	emailError := driver findElementByID: 'registerEmail-error'.
	
	self assert: emailError  getText = 'The minimum number of characters allowed is 8'.
]

{ #category : #registerTests }
ERTestWithParasol >> testRegisterErrorWhenTheEmailFieldIsNotEntered [
	| actions firstName lastName email emailError password confirmPassword next1 |
	
	actions := BPActions driver: driver .
	
	firstName := driver findElementByID: 'firstName'.
	lastName := driver findElementByID: 'lastName'.
	email := driver findElementByID: 'registerEmail'.
	password := driver findElementByID: 'registerPassword'.
	confirmPassword := driver findElementByID: 'confirmPassword'.
	next1 := driver findElementByID: 'next1'.
	
	actions moveToElement: firstName .
	actions click.
	actions perform .

	firstName sendKeys: 'Andreina'.
	lastName sendKeys: 'Cota Vidaurre'.
	password sendKeys: '12345678'.
	confirmPassword sendKeys: '12345678'.
	next1 click .
	
	emailError := driver findElementByID: 'registerEmail-error'.
	
	self assert: emailError  getText = 'Please enter your email'.
]

{ #category : #registerTests }
ERTestWithParasol >> testRegisterErrorWhenTheFirstNameIsNotEntered [
	| actions firstNameError lastName email password confirmPassword next1 |
	
	actions := BPActions driver: driver .
	
	lastName := driver findElementByID: 'lastName'.
	email := driver findElementByID: 'registerEmail'.
	password := driver findElementByID: 'registerPassword'.
	confirmPassword := driver findElementByID: 'confirmPassword'.
	next1 := driver findElementByID: 'next1'.
	
	actions moveToElement: lastName .
	actions click.
	actions perform .

	lastName sendKeys: 'Cota Vidaurre'.
	email sendKeys: 'andreina@gmail.com'.
	password sendKeys: '12345678'.
	confirmPassword sendKeys: '12345678'.
	next1 click .
	
	firstNameError := driver findElementByID: 'firstName-error'.
	
	self assert: firstNameError getText = 'Please enter your First Name'.
]

{ #category : #registerTests }
ERTestWithParasol >> testRegisterErrorWhenTheLastNameIsNotEntered [
	| actions firstName lastNameError email password confirmPassword next1 |
	
	actions := BPActions driver: driver .
	
	firstName := driver findElementByID: 'firstName'.
	email := driver findElementByID: 'registerEmail'.
	password := driver findElementByID: 'registerPassword'.
	confirmPassword := driver findElementByID: 'confirmPassword'.
	next1 := driver findElementByID: 'next1'.
	
	actions moveToElement: firstName .
	actions click.
	actions perform .

	firstName sendKeys: 'Andreina'.
	email sendKeys: 'andreina@gmail.com'.
	password sendKeys: '12345678'.
	confirmPassword sendKeys: '12345678'.
	next1 click .
	
	lastNameError := driver findElementByID: 'lastName-error'.
	
	self assert: lastNameError  getText = 'Please enter your Last Name'.
]

{ #category : #registerTests }
ERTestWithParasol >> testRegisterErrorWhenThePasswordFieldIsLessThanEightCharacters [
	| actions firstName lastName email emailError password confirmPassword next1 |
	
	actions := BPActions driver: driver .
	
	firstName := driver findElementByID: 'firstName'.
	lastName := driver findElementByID: 'lastName'.
	email := driver findElementByID: 'registerEmail'.
	password := driver findElementByID: 'registerPassword'.
	confirmPassword := driver findElementByID: 'confirmPassword'.
	next1 := driver findElementByID: 'next1'.
	
	actions moveToElement: firstName .
	actions click.
	actions perform .

	firstName sendKeys: 'Andreina'.
	email sendKeys: 'Andreina@gmail.com'.
	lastName sendKeys: 'Cota Vidaurre'.
	password sendKeys: '1234567'.
	confirmPassword sendKeys: '1234567'.
	next1 click.
	
	emailError := driver findElementByID: 'registerPassword-error'.
	
	self assert: emailError  getText = 'Your password must have at least 8 characters'.
]

{ #category : #accessing }
ERTestWithParasol >> testRegisterUser [
	|linkCreate divForm data1 dataRegister register message|
	data1 := #('Andreina' 'Cota' 'andreina@gmail.com' '12345678' '12345678').
	"firstName"
	linkCreate := driver findElementByLinkText: 'Create an account.'.
	linkCreate click .
	divForm := driver findElementByTagName: 'body'.
	dataRegister := ''.
	data1 do: [ :each | dataRegister := dataRegister , (BPKeys tab) asString, each ].
	divForm sendKeys: 	(BPKeys tab) asString, (BPKeys return) asString, dataRegister.
	register := driver findElementByID: 'register'.
	register click.
	BPTimeouts new implicitlyWait: 5.
	message := driver findElementByName: 'message'.
	self assert: (message getText) = 'Please enter your Address!' .
	"divForm sendKeys: 	(BPKeys tab) asString, 'Evelyn', (BPKeys tab) asString  .
	nameInput := driver findElementByID: 'email'.
	self assert: (nameInput getAttribute: 'placeholder') = 'Enter email'"
]

{ #category : #registerTests }
ERTestWithParasol >> testRegisterUserSuccesfull [
	| actions firstName lastName email password confirmPassword next1 contactAddress contactCity contactProvince contactPostal contactFacebook contactTwitter contactHomePage next2 monday tuesday wednesday thursday friday selectTshirtSize vegetarian vegan next3 orgName orgAddress orgCity orgProvince orgPostal next4 addInfoKeywords addInfoAddText next5 selectPaymentType reductionTicket selectCurrency |
	
	actions := BPActions driver: driver .
	
	firstName := driver findElementByID: 'firstName'.
	lastName := driver findElementByID: 'lastName'.
	email := driver findElementByID: 'registerEmail'.
	password := driver findElementByID: 'registerPassword'.
	confirmPassword := driver findElementByID: 'confirmPassword'.
	next1 := driver findElementByID: 'next1'.
	
	contactAddress := driver findElementByID: 'contactAddress' .
	contactCity := driver findElementByID: 'contactCity'.
	contactProvince := driver findElementByID: 'contactProvince'.
	contactPostal := driver findElementByID: 'contactPostal'.
	contactFacebook := driver findElementByID: 'contactFacebook'  .
	contactTwitter := driver findElementByID: 'contactTwitter'.
	contactHomePage := driver findElementByID: 'contactHomePage'. 
	next2 := driver findElementByID: 'next2'. 
	
	monday := driver findElementByID: 'monday'.
	tuesday := driver findElementByID: 'tuesday'.
	wednesday := driver findElementByID: 'wednesday'.
	thursday := driver findElementByID: 'thursday'.
	friday := driver findElementByID: 'friday'.
	selectTshirtSize := BPSelect on: (driver findElementByID: 'sel1').
	vegetarian := driver findElementByID: 'vegetarian'.
	vegan := driver findElementByID: 'vegan'.  
	next3 := driver findElementByID: 'next3'.
	
	orgName := driver findElementByID: 'orgName'.
	orgAddress := driver findElementByID: 'orgAddress'.
	orgCity := driver findElementByID: 'orgCity'.
	orgProvince := driver findElementByID: 'orgProvince'.
	orgPostal := driver findElementByID: 'orgPostal'.
	next4 := driver findElementByID: 'next4'.
	
	addInfoKeywords := driver findElementByID: 'addInfoKeywords'.
	addInfoAddText := driver findElementByID: 'addInfoAddText'.       
	next5 := driver findElementByID: 'next5'. 
	
	selectPaymentType := BPSelect on: (driver findElementByID: 'sel2').
	reductionTicket := driver findElementByID: 'reductionTicket' .
	selectCurrency := BPSelect on: (driver findElementByID: 'sel3').
	
	actions moveToElement: firstName .
	actions click.
	actions perform .

	firstName sendKeys: 'Andreina'.
	lastName sendKeys: 'Cota Vidaurre'.
	email sendKeys: 'andreina@gmail.com'.
	password sendKeys: '12345678'.
	confirmPassword sendKeys: '12345678'.
	next1 click .
	
	actions moveToElement: contactAddress .
	actions click.
	actions perform .
	
	contactAddress sendKeys: 'Av. America'.
	contactCity sendKeys: 'Cochabamba'.
	contactProvince sendKeys: 'Cercado'.
	contactPostal sendKeys: '0000'.

	actions moveToElement: contactFacebook .
	actions click.
	actions perform .

	contactFacebook sendKeys: 'https://facebook.com'.
	contactTwitter sendKeys: 'twitter'.
	actions moveToElement: contactHomePage  .
	actions click.
	actions perform .
	contactHomePage sendKeys: 'medium.com'.

	actions moveToElement: next2 .
	actions click.
	actions perform .
	next2 click .
		
	actions moveToElement: vegetarian.
	actions click.
	actions perform .
	
	vegetarian sendKeys: BPKeys arrowUp .
	vegetarian sendKeys: BPKeys arrowUp .
	vegetarian sendKeys: BPKeys arrowUp .
	vegetarian sendKeys: BPKeys arrowUp .
	
	monday click .
	tuesday click.
	wednesday click.
	thursday click.
	friday click.
	selectTshirtSize selectByVisibleText: 'L'.
	vegetarian click.
	next3 click.
	
	actions moveToElement: orgName .
	actions click.
	actions perform .
	
	orgName sendKeys: 'SEMANTICS S.R.L.'.
	orgAddress sendKeys: 'Av. America'.
	orgCity sendKeys: 'Cochabamba'.
	orgProvince sendKeys: 'Cercado'.
	orgPostal sendKeys: '0000'.
	next4 click.
	
	actions moveToElement: addInfoKeywords .
	actions click.
	actions perform .
	
	addInfoKeywords sendKeys: 'example'.
	addInfoAddText sendKeys: 'Example add text'.
	next5  click.
	
	actions moveToElement: selectPaymentType  .
	actions click.
	actions perform .
	
	selectPaymentType selectByVisibleText: 'Bank transfer'.
	reductionTicket sendKeys: '1234567890'.
	selectCurrency selectByVisibleText: 'Euro'.
]

{ #category : #accessing }
ERTestWithParasol >> warmUpModels [
	"store := self defaultStore.
	SDActiveRecord setStore: store.
	SDFooObject warmUp.
	ERUser withAllSubclasses do: [ :each | each warmUp ].
	ERAfiliation warmUp .
	ERCoupon warmUp .
	ERPrice warmUp .
	ERConference warmUp .
	ERAssistance warmUp.
	ERInvoice warmUp .
	ERAccount warmUp ."
	
]
