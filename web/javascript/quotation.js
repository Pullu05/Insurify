window.onload = function () {
    document.getElementById("GetFile")
            .addEventListener("click", () => {
                const template = this.document.getElementById("pdf-content");
                console.log(template);
                console.log(window);
                var opt = {
                    margin: 0,
                    filename: 'Quotation.pdf',
                    image: {type: 'jpeg', quality: 1},
                    html2canvas: {scale: 2},
                    jsPDF: {unit: 'in', format: 'A3', orientation: 'portrait'}
                };
                html2pdf().from(template).set(opt).save();
            });
};

async function saveQuotation(event) {
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
                    alert("Yayy! Your quotation has been saved successfully");
                    event.submitter.remove();
                    saveBtn.classList.add("d-none");
                    btnGroup.classList.remove("d-none");
                } else {
                    throw new Error("Oops! Something went wrong during insertion of data from the " + formAction + " route");
                }
            })
            .catch(err => alert(err));
}


async function sendQuotationToMail(event) {
    event.preventDefault();
    const submitBtn = event.submitter;

    submitBtn.setAttribute('disabled', true);
    submitBtn.lastElementChild.innerHTML = "Sending...";
    submitBtn.firstElementChild.classList.remove('d-none');

    var htmlContent = "<html> <head> <style> label{ font-size: 1rem; margin-bottom: 4px; display: block; } input{padding: 8px; width: 20vw; font-size: 15px; margin-bottom: 14px; } @media only screen and (max-width: 700px) { input { width: 70vw; } } h6{ font-size: 1.3rem; font-weight: bold; margin: 0; padding: 0; } h2{ font-size: 1.8rem; } .card{ margin-bottom: 1rem; } .card-header{ margin-bottom: 8px; } </style> </head> <body>";
    htmlContent += document.getElementById('pdf-content').innerHTML.toString();
    htmlContent += "</body> </html>";
//                    await fetch("TotalWeightage").then(res => res.text()).then(data => {
//                        htmlContent = data;
//                    });


    // Form Submission functionality
    const formData = new FormData(event.target);
    const data = {};
    formData.forEach(function (value, key) {
        data[key] = value;
    });

    data.htmlContent = htmlContent;

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
                    alert("Yayy! Your quotation has been successfully sent to the email " + data.email);
                    location.href = "TotalWeightage";
                } else {
                    throw new Error("Oops! Something went wrong during sending of data from the " + formAction + " route");
                }
            })
            .catch(err => alert(err))
            .finally(() => {
                event.target.reset();
                submitBtn.removeAttribute('disabled');
                submitBtn.lastElementChild.innerHTML = "Sent";
                submitBtn.firstElementChild.classList.add('d-none');
            });
}