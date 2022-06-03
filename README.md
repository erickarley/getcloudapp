Hi! 

Candidate: Erick Arley
Technology chosen: NodeJS + WebdriverIO + Cucumber

This is my code for the technical tasks!

You will find two sets of tests:
- GetCloudAppTechTask.feature: this file contains the raw calls to the framework. The tests are hard to read if you are not familiarized with some of the structures and locators.
- GetCloudAppTechTaskImproved.feature: This file is clean, beautiful and contains the polished version. I created an extra test to comply with the technical request. As you will see this test creates a random user through the sign up page and then uses it to log in!

To execute the project:
- download the repo: git clone https://github.com/erickarley/getcloudapp.git
- install the project and its packages: npm install
- run the first or the second set of tests:
-- First: npx wdio run wdio.conf.ts --spec .\src\features\GetCloudAppTechTask.feature
-- Second: npx wdio run wdio.conf.ts --spec .\src\features\GetCloudAppTechTaskImproved.feature

Let me know if you have any questions!

Thanks for reviewing the code!
Erick Arley