import { When } from '@cucumber/cucumber';

import clearInputField from '../support/action/clearInputField';
import clickElement from '../support/action/clickElement';
import pause from '../support/action/pause';
import selectOption from '../support/action/selectOption';
import setInputField from '../support/action/setInputField';
import openProfileMenu from '../support/action/dashboard/openProfileMenu';
import login from '../support/action/common/login';
import openJetMenuItem from '../support/action/common/openJetMenuItem';
import changeAvatar from '../support/action/userprofile/changeAvatar';
import loginRandomUser from '../support/action/common/loginRandomUser';
import signUp from '../support/action/common/signUp';

When(
    /^I set the Avatar details with name "([^"]*)?", company "([^"]*)?", and role "([^"]*)?"$/,
    changeAvatar  
);

When(
    /^I sign up a random user$/,
    signUp
);

When(
    /^I login with the random user$/,
    loginRandomUser
);

When(
  /^I open the profile menu item "([^"]*)?"$/, 
  openProfileMenu 
);

When(
    /^I login with user name "([^"]*)?" and password "([^"]*)?"$/, 
    login 
);

When(
    /^I open the homepage menu item "([^"]*)?"$/, 
    openJetMenuItem
)

When(
    /^I (click|doubleclick) on the (link|button|element) "([^"]*)?"$/,
    clickElement
);

When(
    /^I (add|set) "([^"]*)?" to the inputfield "([^"]*)?"$/,
    setInputField
);

When(
    /^I clear the inputfield "([^"]*)?"$/,
    clearInputField
);

When(
    /^I pause for (\d+)ms$/,
    pause
);

When(
    /^I select the option with the (name|value|text) "([^"]*)?" for element "([^"]*)?"$/,
    selectOption
);

