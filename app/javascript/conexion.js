var App = {};

App.messages = App.cable.subscriptions.create("MessagesChannel", {
    received: function (data) {
        console.log(data);
    }
});

App.messages.send("Hola Cliente");