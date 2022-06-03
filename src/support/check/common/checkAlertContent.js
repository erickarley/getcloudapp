import pause from '../../action/pause';
import { smallPause } from '../../constants';

/**
 * Check if the given string exists in the alert
 * @param  {String}   expectedAlertMessage The string to check for
 */
export default async (expectedAlertMessage) => {
    /**
     * The Alert selector
     * @type {String}
     */
    const alertContentSelector = "//*[contains(.,'" + expectedAlertMessage + "')]";
    
    // waitForDisplayed(alertContentSelector);
    await pause(smallPause);
    /**
     * Elements found in the DOM
     * @type {Object}
     */
     const elements = await $$(alertContentSelector);

    expect(elements.length).toBeGreaterThan(
        0,
        // @ts-expect-error
        `Expected element "${alertContentSelector}" to exist`
    );
};
