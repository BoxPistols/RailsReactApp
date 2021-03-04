// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.
import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import styles from './hello_react.module.scss'

const Hello = (props) => (
	<div>
		<div className={styles.hoge}>Hello {props.name}!</div>
		<p>Age: {props.age}</p>
		<p>Title: {props.title}</p>
	</div>
)

Hello.defaultProps = {
	name: 'David',
	age: 32,
	title: 'Hy!'
}

Hello.propTypes = {
	name: PropTypes.string,
	title: PropTypes.string,
}

document.addEventListener('DOMContentLoaded', () => {
	ReactDOM.render(
		<Hello name='James' />,
		document.body.appendChild(document.createElement('div'))
	)
})
