var ActivityName = React.createClass({
  propTypes: {
    activity: React.PropTypes.string
  },

  render: function() {
    return (
      <div>
        <div>Type: {this.props.activity.name}</div>
      </div>
    );
  }
});
