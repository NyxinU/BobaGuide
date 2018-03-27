import merge from 'lodash/merge';

import { RECEIVE_MENU } from '../actions/menu_actions';

const menuReducer = (state = {}, action) => {
  Object.freeze(state);
  let newMenu = {};
  switch (action.type) {
    case RECEIVE_MENU:
      newMenu = { [action.menu.id]: action.menu };
      return merge({}, state, newMenu);
    default:
      return state;
  }
};

export default menuReducer;
