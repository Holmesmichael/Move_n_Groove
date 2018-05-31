var Greeting = React.createClass({

  render: function() {
    return (
    <div>
      <h2>Hi{this.props.activity.activity}</h2>
    </div>);
  }
});
