import clickElement from '../clickElement';
import waitForDisplayed from '../waitForDisplayed';
import waitFor from '../waitFor';
import { bigPause } from '../../constants';

/**
 * Selects an item from the user profile menu 
 * @param {String}      menuItemName     item to be selected from the profile menu
 */

export default async(menuItemName) => {
    
    await clickElement('click','element','#avatar');

    /**
     * Selector for the column button
     * @type {String}
     */
    const profileMenuOptionSelector = ".dropdown-item*="+ menuItemName;

    await waitForDisplayed(profileMenuOptionSelector);
    await waitFor(profileMenuOptionSelector, bigPause, null, 'enabled');
    await clickElement('click','element',profileMenuOptionSelector);
}