function handleAutomobileSectionChange(event = {}) {
    let selectedBtn = event.currentTarget;
    const targetSectionId = selectedBtn.dataset.sectionid;

    // Setting the selected button again for the form submit functionality
    selectedBtn = document.querySelector(`.custom-btn[data-sectionid=${targetSectionId}`);

    const targetSection = document.querySelector("#" + targetSectionId);
    const currentSectionInView = document.querySelector('.automobileFormSection.d-block');
    const currentActiveBtn = document.querySelector('.custom-btn.btn-success');

    // Removing the current section in view
    currentSectionInView?.classList.remove('d-block');
    currentSectionInView?.classList.add('d-none');

    // Showing the target section in view
    targetSection?.classList.add('d-block');
    targetSection?.classList.remove('d-none');

    // Same concept for buttons is used!
    currentActiveBtn?.classList.remove('btn-success');
    currentActiveBtn?.classList.add('btn-secondary');

    selectedBtn?.classList.add('btn-success');
    selectedBtn?.classList.remove('btn-secondary');
}

async function submitFormAndChangeSection(event) {
    event.preventDefault();

    // Form Submission functionality
    const formData = new FormData(event.target);
    const data = {};
    formData.forEach(function (value, key) {
        data[key] = value;
    });

    const formAction = event.target.getAttribute('action');

    await fetch(formAction, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: new URLSearchParams(data)
    })
            .then(response => response.json())
            .then(result => {
                if (result.success) {
                    console.log("Yayy! Data Successfully inserted into DB using the " + formAction + " route");
                    // Change button colour and section after form submission
                    handleAutomobileSectionChange({currentTarget: event.submitter});
                } else {
                    throw new Error("Oops! Something went wrong during insertion of data from the " + formAction + " route");
                }
            })
            .catch(err => console.error(err));
}