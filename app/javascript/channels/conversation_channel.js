import consumer from "./consumer";

const initConversationCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;

    consumer.subscriptions.create({ channel: "ConversationChannel", id: id }, {
      received(data) {
        Turbolinks.visit(window.location.href)
      },
    });
  }
}

export { initConversationCable }
