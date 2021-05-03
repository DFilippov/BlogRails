import consumer from "./consumer"

    consumer.subscriptions.create("CommentChannel", {
      connected() {
        // Called when the subscription is ready for use on the server
        // console.log("Connected to server! Congrats!!!")
      },

      disconnected() {
        // Called when the subscription has been terminated by the server
        // console.log("DISCONNECTED !!!")
      },

      received(data) {
        // Called when there's incoming data on the websocket for this channel

        if (data['action'] == 'edit') {
          refreshEdittedCommentInfo(data['comment'])
        } else if (data['action'] == 'destroy') {
          destroyCommentInfo(data['comment'])
        }


      }
    });

function refreshEdittedCommentInfo(comment) {
  const comment_body = document.getElementById(`comment_body_${comment['id']}`);
  comment_body.innerText = comment['body'];
  const badge = `    <span class="badge  badge-warning">JUST MODIFIED (at: ${comment['updated_at']})</span>`;
  const element = document.getElementById(`comment-updated-badge-${comment['id']}`);
  element.innerHTML = badge;
}

function destroyCommentInfo(comment) {
  const commenter = comment['author'];
  const commentShadow = document.getElementById(`shadow-${comment['id']}`);
  commentShadow.innerHTML = "" +
          `<i>${commenter}</i>` +
          "<i style='color: red'>  DELETED THIS COMMENT</i>"
}