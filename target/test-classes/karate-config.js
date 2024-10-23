function fn() {

	var config = {
		env: 'qa',
		baseURL: '',
		baseUrl: '',
		goRestAuthToken: '89cf87f16f772073ba400974a844aaf551e4086be18a9171e59be21ffa1b662a'
	};

	karate.log('The value of env is: ', config.env)

	if (config.env == 'qa') {
		config.baseURL = 'https://reqres.in'
	} else if (config.env == 'dev') {
		config.baseURL = 'https://reqres.in'
	} else if (config.env == 'uat') {
		config.baseURL = 'https://reqres.in'
	}
	
	if (config.env == 'qa') {
		config.baseUrl = 'https://gorest.co.in'
	} else if (config.env == 'dev') {
		config.baseUrl = 'https://gorest.co.in'
	} else if (config.env == 'uat') {
		config.baseUrl = 'https://gorest.co.in'
	}

	karate.configure('connectTimeout', 5000);
	karate.configure('readTimeout', 5000);

	return config;

}