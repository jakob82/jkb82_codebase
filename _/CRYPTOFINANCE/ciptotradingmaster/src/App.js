import React from 'react';
import './App.css';
import ReactBootstrap from 'react-bootstrap'
import logo from './logo.svg';

var buttonStyle = {
  margin: '10px 10px 10px 0'
};

var App = React.createClass({
  render: function () {
    return (
      <ButtonGroup aria-label="Basic example">
        <Button variant="secondary">Left</Button>
        <Button variant="secondary">Middle</Button>
        <Button variant="secondary">Right</Button>
      </ButtonGroup>
    );
  }
});

module.exports = App;