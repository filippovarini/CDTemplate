# CI/CD Template
Boilerplate for implementing CI/CD for
- GitHub Actions
- NodeJs application 
- Dockerised Application
- Heroku Deployment

**Note** You can run the `./update` executable to update your image and re-run
the container

Also, the .yml file relies on GitHub secrets. To set them up, go to `Settings >
Secrets > Add New Secret`
![](https://github.com/Azure/actions-workflow-samples/raw/master/assets/images/create-secret.png)

### Setting up Heroku
You need to authenticate the runner that wants to push to Heroku. To do so:

1. Go to your `Heroku account > Account Settings`. Scroll to the bottom until 
you see `API Key`. Copy this key and go to your project's repository on GitHub.

2. Add your herkou email to HEROKU_EMAIL secret

3. In your Repo, add a new secret called `HEROKU_API_KEY` and paste the 
copied API Key as the value.

You are now authenticated and can push to Heroku!
