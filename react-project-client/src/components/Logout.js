import React from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { logout } from '../actions/currentUser.js';

const Logout = ({ logout, history }) => {
  
  return (
    <form className="ui form" onSubmit={(event) => {
      event.preventDefault()
      logout()
      history.push('/')}
    }>
      <input className="ui button" type="submit" value="Log Out" />
    </form>
  )
}

export default withRouter(connect(null, { logout })(Logout))