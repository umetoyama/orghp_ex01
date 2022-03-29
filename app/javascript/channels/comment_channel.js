import consumer from "./consumer"

if(location.pathname.match(/\/topics\/\d/)) {

  consumer.subscriptions.create({
    channel: "CommentChannel",
    topic_id: location.pathname.match(/\d+/)[0]
  }, {

    connected() {
      // Called when the subscription is ready for use on the server
    },
  
    disconnected() {
      // Called when the subscription has been terminated by the server
    },
  
    received(data) {
      const html = `
        <div class="one-topic__comment-block">
          <p class="one-topic__comment-user">${data.user.name}:</p>
          <p class="one-topic__comment-data">${data.comment.text}</p>
        </div>`
      const comments = document.getElementById("comment-f")
      comments.insertAdjacentHTML('beforebegin', html)
      const commentForm = document.getElementById("one-topic__comment-form")
      commentForm.reset();
    }
  })
}
