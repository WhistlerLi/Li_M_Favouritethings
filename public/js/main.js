// this is a partially revealing module pattern - just a variation on what we've already done

const myVM = (() => {
    // get the user buttons and fire off an async DB query with Fetch
    let userButtons = document.querySelectorAll('.u-link'),
        lightbox = document.querySelector('.lightbox');

    function renderSocialMedia(socialMedia) {
        return `<ul class="u-socail">
                    ${socialMedia.map(item => `<li>${item}</li>`).join('')}
                 </ul>`
    }

    function parseUserData(person){
        let targetDiv = document.querySelector('.lb-content'),
            targetImg = lightbox.querySelector('img');

        let bioContent = `
            <p>Name:${person.name}</p>
            <h4>Type:${person.type}</h4>
            <h4>Nationality:${person.nationality}</h4>
            <p>Description:${person.description}</p>
            `;

            console.log(bioContent);
            targetDiv.innerHTML = bioContent;
            targetImg.src = person.imgsrc;

            lightbox.classList.add('show-lb');
    }

    function getUserData(event) {
        // kill the default a tage behaviour (don't navigate anywhere)
        event.preventDefault(); 
        // debugger;
        // find the image closest to the anchor tag and get its src property
        let imgSrc = this.previousElementSibling.getAttribute('src');

        let url = `/users/${this.getAttribute('href')}`;  // /3

        fetch(url)  // go get the data
            .then(res => res.json()) // parse the json result into a plain object
            .then(data => {
                console.log("my database result is: ", data)

                data[0].imgsrc = imgSrc;

                parseUserData(data[0]);
            })
            .catch((err) =>{
                res.render('error',{data: err, layout:'error'});

            });
    }

    userButtons.forEach(button => button.addEventListener('click', getUserData))
    lightbox.querySelector('.close').addEventListener('click',function() {
        lightbox.classList.remove('show-lb');
    });

})();