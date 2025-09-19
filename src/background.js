browser.browserAction.onClicked.addListener(handleClick)

function handleClick(tab) {
    // clear site's local and session storage
    window.localStorage.clear()
    window.sessionStorage.clear()

    // remove cookies
    browser.cookies.getAll({url:tab.url})
    .then((cookies) => {
        for (let cookie of cookies) {
            browser.cookies.remove({url:tab.url,name:cookie.name})
        }
    })
    .catch((err) => console.error(err))

    // reload tab
    browser.tabs.reload(tab.id)
}