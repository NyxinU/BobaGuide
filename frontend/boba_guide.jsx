import React from 'react';
import ReactDOM from 'react-dom';

import configureStore from './store/store';
import * as SessActions from './actions/session_actions';

document.addEventListener('DOMContentLoaded', () => {
  const store = configureStore();
  window.getState = store.getState;
  window.dispatch = store.dispatch;
  window.login = SessActions.login;

  const root = document.getElementById('root');
  ReactDOM.render(<h1>entry file</h1>, root);
});
