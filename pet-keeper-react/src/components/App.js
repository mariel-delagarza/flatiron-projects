import React from 'react';
import {BrowserRouter, Route } from 'react-router-dom';
import PetList from './pets/PetList';

const App = () => {
  return (
    <div>
      <BrowserRouter>
        <div>
          <Route path="/" component={PetList} />
        </div>
      </BrowserRouter>
    </div>
  )
}

export default App;