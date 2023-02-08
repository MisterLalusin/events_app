import React, { useState} from 'react'
import ReactDOM from 'react-dom'

const App = props => {
  const [tasks] = useState(['laundry', 'shopping']);
  return (
    <div>
      <h1>Tasks</h1>
      <ul>{tasks.map((task, index) => <li key={index}>{task}</li>)}</ul>
    </div>
  )
}


document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <App />,
    document.body.appendChild(document.createElement('div')),
  )
})