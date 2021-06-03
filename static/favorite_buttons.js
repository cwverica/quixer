async function toggleFavorite(evt) {
    if ([...evt.target.classList].includes("fa-heart")) {
        const recipeId = evt.target.parentElement.parentElement.dataset.recipeId;
        let success;
        if ([...evt.target.classList].includes("far")) {
            try {
                success = await axios({
                    url: `/user/favorite/${recipeId}`,
                    method: 'GET'
                });
            }
            catch (e) {
                console.log("not sure what happened, sorry", e);
            }
        } else if ([...evt.target.classList].includes("fas")) {
            if (confirm('Click "OK" to remove from favorites. NOTE: Your notes will not be recoverable after this.')) {
                try {
                    success = await axios({
                        url: `/user/unfavorite/${recipeId}`,
                        method: 'GET'
                    });
                }
                catch (e) {
                    console.log("not sure what happened, sorry", e);
                }
            } else success = 'False';
        }
        if (success === 'False') {
            console.log("no error, but favorite/unfavorite did not succeed.");
        } else {
            evt.target.classList.toggle("far");
            evt.target.classList.toggle("fas");
        }

    }
}

async function addHearts() {
    const drinkTitles = document.querySelectorAll('.drink-title');

    try {
        const favorites = await axios({
            url: '/user/get_favorites',
            method: 'GET'
        });


        drinkTitles.forEach(d => {
            let html = d.innerHTML;
            if (html.includes('<span class="heart">')) {
            } else {
                let heart = 'far';
                if (favorites['data'].includes(parseInt(d.dataset.recipeId))) {
                    heart = 'fas'
                }
                d.innerHTML = html.concat(
                    `<span class="heart">
                    <i class="${heart} fa-heart"></i>
                    </span>`
                );
            }
        });
    }
    catch (e) {
        console.log("oops, I did it again", e)
    }

    document.querySelectorAll('i.fa-heart').forEach(heart => heart.addEventListener('click', (e) => toggleFavorite(e)));
}

$(window).on('load', addHearts);
