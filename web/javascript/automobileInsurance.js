checkPreviousForms();

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
    const form = event.target;

    if (!form.checkValidity()) {
        form.classList.add('was-validated')
        return;
    }

    form.classList.add('was-validated')

    const formData = new FormData(form);
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
                    checkPreviousForms();
                } else {
                    throw new Error("Oops! Something went wrong during insertion of data from the " + formAction + " route");
                }
            })
            .catch(err => console.error(err));
}


function checkPreviousForms() {
    // Get the previous form element
    var vehicleForm = document.getElementById("vehicleDataForm");
    var insurantForm = document.getElementById("insurantDataForm");


    // Check if the previous form is filled out
    if (vehicleForm.checkValidity() && insurantForm.checkValidity()) {
        // If the previous form is filled out, show the current form section
        document.getElementById("send-quote-section").style.display = "block";
        document.getElementById("subscription-plans-section").style.display = "block";
        // Hide the "Please fill the previous forms" message
        document.getElementById("form-message").style.display = "none";
        document.getElementById("form-message2").style.display = "none";

    } else {
        // If the previous form is not filled out, hide the current form section
        document.getElementById("send-quote-section").style.display = "none";
        document.getElementById("subscription-plans-section").style.display = "none";
        // Show the "Please fill the previous forms" message
        document.getElementById("form-message").style.display = "block";
        document.getElementById("form-message2").style.display = "block";

    }
}
