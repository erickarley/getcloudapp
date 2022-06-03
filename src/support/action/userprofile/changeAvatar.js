import clickElement from '../clickElement';
import clearInputField from '../clearInputField';
import setInputField from '../setInputField';
import { mediumPause } from '../../constants';
import selectOption from '../selectOption';
import pause from '../pause';

/**
 * Performs change in Avatar details
 * @param  {String}   userName      The username
 * @param  {String}   company       The company
 * @param  {String}   role          The role
 */
export default async (userName, company, role) => {
    /**
     * Selector for the username field
     * @type {String}
     */
    const userNameSelector = '#user_name';

    /**
     * Selector for the company field
     * @type {String}
     */
    const companySelector = '#user_company';

    await clearInputField(userNameSelector);
    await setInputField('add', userName, userNameSelector);
    await clearInputField(companySelector);
    await setInputField('add', company, companySelector);
    await selectOption('value', role, '#user_profile');
    await clickElement('click', 'button',"[name='commit']");
    await pause(mediumPause);
};

