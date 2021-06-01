async function getNotes() {
    const recipeId = document.querySelector('.drink-title').dataset.recipeId;

    try {
        const notes = await axios({
            url: `/user/get_notes/${recipeId}`,
            method: 'GET'
        });

        return notes.data;

    } catch (e) {
        console.log("WHOOPS!", e)
    }


}

async function updateNotes(e) {
    e.preventDefault();
    const recipeId = document.querySelector('.drink-title').dataset.recipeId;
    const notes = document.querySelector('#user-notes').value;
    const cur_notes = await getNotes();
    if (notes !== cur_notes) {
        try {
            const resp = await axios({
                url: `/user/update_notes/${recipeId}`,
                method: 'POST',
                data: { 'notes': notes }
            });
            if (resp.data === 'True') {
                console.log("Updated notes")
            } else {
                console.log("Update failed")
            }

        } catch (e) {
            console.log("WHOOPS!", e)
        }
    }


}

$(window).on('load', async function () {
    const notes = await getNotes();
    document.querySelector('#user-notes').innerHTML = notes ? notes : ""
    document.querySelector('#save-btn').addEventListener("click", updateNotes);
});