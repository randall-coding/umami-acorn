# Launch your own Umami server

## Umami
Umami is a lightweight, privacy-focused, open-source analytics solution designed for website usage tracking. It stands out as a superior alternative to platforms like Google Analytics, offering users complete control over their data while maintaining a high level of performance and simplicity in implementation.

For simplicity, we'll deploy our Umami server using an acorn image.


## What is Acorn?
Acorn is a new cloud platform that allows you to easily deploy, develop and manage web services with containerization.  A single acorn image can deploy all that you need: from a single container webserver, to a multi service Kubernetes cluster with high availability.  Don't worry if you don't understand what all those terms mean; we don't have to know that in order to deploy our server.

## Setup Acorn Account
Setup an acorn account at [acorn.io](https://acorn.io).  This can be a free account for your first deployment, and if you'd like additional storage space you can look into the pro account or enterprise.  You will need a Github account to signup as shown in the image below.

![signin_acorn](https://github.com/randall-coding/opensupports-docker/assets/39175191/d46815fb-d2d5-42cd-b93d-41ca541a63bd)

## Install acorn cli 
First we need to install acorn-cli locally.  Choose an install method from the list below:

**Linux or Mac** <br>
`curl https://get.acorn.io | sh`

**Homebrew (Linux or Mac)** <br>
`brew install acorn-io/cli/acorn`

**Windows** <br> 
Uncompress and move the [binary](https://cdn.acrn.io/cli/default_windows_amd64_v1/acorn.exe) to your PATH

**Windows (Scoop)** <br>
`scoop install acorn`

For up to date installation instructions, visit the [official docs](https://runtime-docs.acorn.io/installation/installing).

## Login with CLI
Back in our local command terminal login to acorn.io with: <br>
`acorn login acorn.io` 

## Deploying Acorn
Now that we have the acorn cli configured, we can deploy our acorn image with a few simple commands.

Clone the repo locally if you haven't already with:

`git clone https://github.com/randall-coding/umami-acorn.git`

Next build and run.

`acorn build -t umami`

`acorn run -n umami umami`

Visit your acorn dashboard to see if your deployment was successful.

Click on the umami deployment, and find the endpoint section on the right side panel.  This is your umami instance link.

![baserow_acorn_ui]()

![baserow_endpoint]()

## Configure Umami

Go to your acorn umami URL. Then you'll be on Umami's login page. Use the default login credentials to login to your admin account:

- Username: `admin`
- Password: `umami`

<img width="368" alt="image" src="">

After logging into your account, you can easily update the admin password by navigating to the `Settings` page. From there, select `Profile` in the left navigation bar and click on "Change Password."

<img width="524" alt="image" src="">

Create a new website by accessing the `Settings` page and navigating to the `Websites` tab.

<img width="530" alt="image" src="">

Once you've added your website, retrieve the tracking code by clicking the "Edit" button beside your listed website. Then, visit the "Tracking code" tab, copy the snippet provided, and paste it into the header of your website.

<img width="558" alt="image" src="">

Now you're ready to watch analytics about your site on the Umami's Dashboard.

Congratulations! The Umami installation is now complete.

## Conclusion
That's all there is to it.  We've now got a Umami server up and running from an acorn image.
For more detailed instructions on working with your Umami server see the Umami documentation.

## References
* [Umami Documentation](https://umami.is/docs)
* [Getting started with Acorn](https://docs.acorn.io/getting-started)
