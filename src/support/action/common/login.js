import clickElement from '../clickElement';
import clearInputField from '../clearInputField';
import setInputField from '../setInputField';
import pause from 'webdriverio/build/commands/browser/pause';
import { mediumPause } from '../../constants';

/**
 * Performs login with the following credentials
 * @param  {String}   userName      The username
 * @param  {String}   password      The password
 */
export default async (userName, password) => {
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

    await clearInputField(userNameSelector);
    await setInputField('add', userName, userNameSelector);
    await clearInputField(passwordSelector);
    await setInputField('add', password, passwordSelector);
    await clickElement('click', 'button',"[name='commit']");
    await pause(mediumPause);
};

