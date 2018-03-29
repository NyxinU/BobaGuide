import React from 'react';
import ReactDOM from 'react-dom';
import Root from './components/Root';

import configureStore from './store/store';
import { fetchMenu } from './util/menu_api_util';

document.addEventListener('DOMContentLoaded', () => {
  const store = configureStore();
  window.getState = store.getState;
  window.dispatch = store.dispatch;
  window.fetchMenu = fetchMenu;

  const root = document.getElementById('root');
  ReactDOM.render(<Root store={store} />, root);
});
