import React from "react";
import * as Flex from "@twilio/flex-ui";

class App extends React.Component {
  render() {
    const { manager } = this.props;

    if (!manager) {
      return null;
    }

    return (
      <Flex.ContextProvider manager={manager} >
        <Flex.RootContainer dir="rtl" />
      </Flex.ContextProvider>
    );
  }
}

export default App;
