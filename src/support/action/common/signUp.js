import clickElement from '../clickElement';
import clearInputField from '../clearInputField';
import setInputField from '../setInputField';
import { mediumPause } from '../../constants';
import pause from '../pause';

/**
 * Creates a random user with the same password
 */
export default async () => {
    let d = new Date();
    let randomUser = "user" + (d.getHours()+1)+'-'+d.getMinutes()+'-'+d.getSeconds() + "@gmail.com";
    await browser.sharedStore.set('userName', randomUser);

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
    await setInputField('add', randomUser, userNameSelector);
    await clearInputField(passwordSelector);
    await setInputField('add', "Password1", passwordSelector);
    await clickElement('click', 'button',"[name='commit']");
    await pause(mediumPause);
};

