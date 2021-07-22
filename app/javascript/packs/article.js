function commentsButtonPressed(button, id) {
    if (button.getAttribute('aria-expanded') === 'false') {
        sendAjaxRequest(id);
    }
}

function sendAjaxRequest(id) {
    let commentsList =  document.getElementById(`comments_list_article_${id}`);
    var numberOfTheBatch = parseInt(commentsList.dataset.batchnumber);
    commentsList.dataset.batchnumber = numberOfTheBatch + 1;
    numberOfTheBatch = parseInt(commentsList.dataset.batchnumber);
    const commentButton = document.getElementById(`commentsButtonForArticle${id}`);
    const commentSize = commentButton.dataset.commentssize;
    const perPage = commentButton.dataset.perpage;
    const pages = parseInt(commentSize / perPage);

    // check - if it is the last page (or the only one) then do not send request for new batch of comments
    if (numberOfTheBatch * perPage <= commentSize) {
        $.ajax({
            url: "/comments/",
            type: "get",
            data: {article_id: id, batch_number: numberOfTheBatch},
            success: function (data) {
            },
            error: function (data) {
            }
        });
    }
}

function didScrollToTheBottom(o, id) {
    if (o.scrollTop + o.offsetHeight == o.scrollHeight) {
        sendAjaxRequest(id);
    }
}

function commentsButtonSetListeners() {
    const buttons = document.querySelectorAll('button[data-comments-button-article-id]');
    buttons.forEach((button) => {
        button.addEventListener('click', (event) => {
            const id = button.dataset.commentsButtonArticleId;
            commentsButtonPressed(button, id);
        });
    });
}

function commentsScrollAreaSetListeners() {
    const scrollLists = document.querySelectorAll('div[data-comments-scroll-article-id]');
    scrollLists.forEach( (list) => {
        list.addEventListener('scroll', () => {
            const id = list.dataset.commentsScrollArticleId;
            didScrollToTheBottom(list, id);
        })
    });
}

window.addEventListener('turbolinks:load', () => {
    commentsButtonSetListeners();
    commentsScrollAreaSetListeners();
});


