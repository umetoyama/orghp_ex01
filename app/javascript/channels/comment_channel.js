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
        <div class="comment">
          <p class="user-info">${data.user.name}: </p>
          <p class="text">${data.comment.text}</p>
        </div>`
      const comments = document.getElementById("comment-f")
      comments.insertAdjacentHTML('beforebegin', html)
      const commentForm = document.getElementById("comment-form")
      commentForm.reset();
    }
  })
}
