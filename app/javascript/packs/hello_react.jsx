// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

function MyButton(props) {
  return (
    <button
      onClick={() => {
        alert(props.pesan);
      }}
    >
      {props.judul}
    </button>
  );
}

function MessageBox() {
  return (
    <div>
      <h1>React Simple</h1>
      <MyButton judul="nyoba" pesan="hallow" />
      <MyButton judul="react" pesan="untuk dasar cukup mudah dipelajari" />
      <MyButton judul="js" pesan="hehe bismillah" />
    </div>
  );
}

ReactDOM.render(<MessageBox />, document.getElementById("root"));