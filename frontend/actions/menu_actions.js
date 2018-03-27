import * as MenuApiUtil from '../util/menu_api_util';

export const RECEIVE_MENU = 'RECEIVE_MENU';

export const receiveMenu = menu => ({
  type: RECEIVE_MENU,
  menu,
});

export const createMenu = menu => dispatch => (
  MenuApiUtil.createMenu(menu).then(menu => (
    dispatch(receiveMenu(menu))
  ))
);

