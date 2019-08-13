function loginRegisterSwitch() {
	$('form').animate({	height: 'toggle', opacity: 'toggle'	}, 'slow');
}

function showAlert() {
	$('.alert-success').show();
}

$('.message a').click(function() {
	loginRegisterSwitch();
});

$('button.register').click(function() {
	var firstName = $('.register-form .firstName').val();
	var lastName = $('.register-form .lastName').val();
	var email = $('.register-form .email').val();
	var password = $('.register-form .password').val();
	var confirmPassword = $('.register-form .confirmPassword').val();

	if ($('[name=accessLevel]')[0].checked) {
    	var accessLevel = 'user';
    } else if ($('[name=accessLevel]')[1].checked) {
    	var accessLevel = 'admin';
    }
	
	if (firstName == '' || lastName == '' || email == '' || password == '' || confirmPassword == '') {
		alert('Заполните все обязательные поля!');
	} else if ((password.length) < 6) {
		alert('Пароль должен быть не менее 8 символов!');
	} else if (!(password).match(confirmPassword)) {
		alert("Введенные пароли не совпадают. Попробуйте ещё раз!");
	} else {
		var regFormUser = {
			firstName: firstName,
			lastName: lastName,
			email: email,
			password: password,
			accessLevel: accessLevel			
		};

		$.post('registering', regFormUser, function(data) {
			if (data === 'Success') {
				$('.register-form').reset();
				$('.login-form').reset();
				loginRegisterSwitch();
				showAlert();
			}			
		});
	}
});

$('button.login').click(function() {
	var email = $('.login-form .email').val();
	var password = $('.login-form .password').val();

	if (email == '' || password == '') {
		alert('Заполните форму авторизации!');
	} else {
		var loginFormUser = {
			login: email,
			password: password
		};

		$.post('logging', loginFormUser, function(data) {
			alert(data);
		});
	}
});