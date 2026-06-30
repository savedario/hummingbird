/**
 * For the full copyright and license information, please view the
 * LICENSE.md file that was distributed with this source code.
 */

import {Collapse} from 'bootstrap';

/**
 * Initialize email subscription bar functionality
 */
const initEmailSubHide = () => {
  const {Theme} = window;
  const {emailSub: EmailSubMap} = Theme.selectors;

  // Get DOM elements
  const emailBlock = document.querySelector<HTMLElement>(
    EmailSubMap.emailBlock,
  );
  const emailInput = document.querySelector<HTMLElement>(
    EmailSubMap.emailInput,
  );
  const emailCollapse = emailBlock?.querySelector<HTMLElement>(
    '.collapse',
  );

  // Variables to track focus state
  let emailInputHasFocus = false;
  let blurTimeout: number | null = null;

  // Handle blur - hide block when focus leaves it completely
  const handleBlur = () => {
    emailInputHasFocus = false;

    // Use setTimeout to allow focus to move to other elements in the widget
    blurTimeout = window.setTimeout(() => {
      if (!emailInputHasFocus && emailInput && emailCollapse) {
        emailInput.setAttribute('aria-expanded', 'false');
        const elmCol = Collapse.getInstance(emailCollapse);
        elmCol?.hide();
      }
    }, 100);
  };

  emailInput?.addEventListener('blur', handleBlur);
  emailBlock?.addEventListener('shown.bs.collapse', () => {
    emailInput?.setAttribute('aria-expanded', 'true');
    emailInput?.focus();
    emailInputHasFocus = true;
    // Clear any pending blur timeout
    if (blurTimeout) {
      clearTimeout(blurTimeout);
      blurTimeout = null;
    }
  });
};

export default initEmailSubHide;
