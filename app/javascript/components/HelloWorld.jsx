import React from 'react'
import PropTypes from 'prop-types'

function HelloWorld() {
	// render() {
	function handleClick(e) {
		e.preventDefault()
		console.log('The link was clicked.')
	}
	return (
		<React.Fragment>
			<h1>Greet!!</h1>
			<form>
				<button onClick={handleClick}>Submit</button>
			</form>
		</React.Fragment>
	)
}
// }

HelloWorld.defaultProps = {
	placeholder: 'input...',
	result: 'result!',
}

HelloWorld.propTypes = {
	greeting: PropTypes.string,
	result: PropTypes.string,
}
export default HelloWorld
