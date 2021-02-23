import React from 'react'
import PropTypes from 'prop-types'

class HelloWorld extends React.Component {
	render() {
		return (
			<React.Fragment>
				<h1>Greet!!</h1>
				Greeting: {this.props.greeting}
				<form>
					<input type='text' placeholder={this.props.placeholder} />
					<button onClick={console.log('Test')}>Submit</button>
				</form>
				<p>{this.props.result}</p>
			</React.Fragment>
		)
	}
}

HelloWorld.defaultProps = {
	placeholder: 'input...',
	result: 'result!',
}

HelloWorld.propTypes = {
	greeting: PropTypes.string,
	result: PropTypes.string,
}
export default HelloWorld
