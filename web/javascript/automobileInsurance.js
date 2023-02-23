function handleAutomobileSectionChange(event) {
    const selectedBtn = event.currentTarget;
    const targetSection = document.querySelector("#" + selectedBtn.dataset.sectionid);
    const currentSectionInView = document.querySelector('.automobileFormSection.d-block');
    const currentActiveBtn = document.querySelector('.custom-btn.btn-success');

    // Removing the current section in view
    currentSectionInView.classList.remove('d-block');
    currentSectionInView.classList.add('d-none');

    // Showing the target section in view
    targetSection.classList.add('d-block');
    targetSection.classList.remove('d-none');

    // Same concept for buttons is used!
    currentActiveBtn.classList.remove('btn-success');
    currentActiveBtn.classList.add('btn-secondary');

    selectedBtn.classList.add('btn-success');
    selectedBtn.classList.remove('btn-secondary');
}