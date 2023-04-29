# API Authentication Template

This is a Rails API template with built-in authentication. Use it as a starting point for your own API projects.

## Getting Started

To get started with this API authentication template, follow these steps:

1. Clone the repository to your local machine:
```
git clone https://github.com/guerreiropedr0/api-authentication.git
```
2. Install the required gems:
```
bundle install
```

3. Set up the database:
```
rails db:create
rails db:migrate
```

4. Start the server:
```
rails s
```

You should now be able to access the API at http://localhost:3000.

## Features

This API authentication template includes the following features:

- User authentication and authorization with [Devise](https://github.com/heartcombo/devise)
- Token-based authentication with [Devise-JWT](https://github.com/waiting-for-dev/devise-jwt)
- CORS configuration for cross-domain requests
- Rails API best practices, including versioning and namespacing

## Usage

To use this API authentication template for your own project, you should:

1. Change the name of the Rails application in `config/application.rb`
2. Change the name of the database in `config/database.yml`
3. Customize the authentication and authorization settings in `config/initializers/devise.rb` and `app/models/ability.rb`
4. Modify the sample CRUD endpoints and add your own endpoints for your own resources
5. Deploy your API to a production server and configure your client to use the correct API endpoint

## Contributing

Contributions are welcome! If you find a bug or want to suggest a feature, please open an issue. If you want to contribute code, please fork the repository and submit a pull request.

## License

This API authentication template is licensed under the MIT License. See the `LICENSE` file for details.
