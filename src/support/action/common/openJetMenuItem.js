import { smallPause } from '../../constants';
import clickElement from '../clickElement';
import pause from '../pause';

/**
 * Clicks on the link from the jet menu
 * @param  {String}   jetMenuItemName      The jetMenuItemName
 */
export default async (jetMenuItemName) => {
    /**
     * Selector for the jetMenuItemName field
     * @type {String}
     */
    const jetMenuItemNameSelector = "//div[3]//a/div/div[.='"+ jetMenuItemName + "']";
    await pause(smallPause);
    await clickElement('click', 'element',jetMenuItemNameSelector);
};

