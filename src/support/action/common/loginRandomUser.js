import clickElement from '../clickElement';
import clearInputField from '../clearInputField';
import setInputField from '../setInputField';
import { mediumPause } from '../../constants';
import pause from '../pause';

/**
 * Performs login with the random user and hardcoded password
 */
export default async () => {
    /**
     * Selector for the username field
     * @type {String}
     */
    const userNameSelector = '#email';

    /**
     * Selector for the password field
     * @type {String}
     */
    const passwordSelector = '#password';
    let userRetrieved = await browser.sharedStore.get('userName');
    await clearInputField(userNameSelector);
    await setInputField('add', userRetrieved, userNameSelector);
    await clearInputField(passwordSelector);
    await setInputField('add', "Password1", passwordSelector);
    await clickElement('click', 'button',"[name='commit']");
    await pause(mediumPause);
};

