import React from "react"
import PropTypes from "prop-types"
class Message extends React.Component {

  render () {
    return (
      <React.Fragment>
        <p>This is are the prime numbers you got from the bot</p>
        {this.props.data}
      </React.Fragment>
    );
  }
}

Message.propTypes = {
  greeting: PropTypes.string
};
export default Message
