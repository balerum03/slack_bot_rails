import React from "react"
import PropTypes from "prop-types"
class Message extends React.Component {

  render () {
    const items = []
    let index = 0
    for(const number of this.props.data) {
      items.push(<td key={index} className="table_element">{number}</td>)
      index = index + 1
    }
    return (
      <React.Fragment>
      <div className="adjust">
        <table>
          <tbody>
            <tr>
              {items}
            </tr>
          </tbody>
        </table>
      </div>
      </React.Fragment>
    );
  }
}

Message.propTypes = {
  greeting: PropTypes.string
};
export default Message
