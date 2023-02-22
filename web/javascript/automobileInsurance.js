function handleAutomobileSectionChange(event) {
    const selectedBtn = event.currentTarget;
    const sectionId = selectedBtn.dataset.sectionid;
    const sections = document.querySelectorAll('.automobileFormSection');
    const buttons = document.querySelectorAll('.custom-btn');


    sections.forEach(section => {
        if (section.id === sectionId) {
            section.classList.remove('d-none');
        } else {
            section.classList.add('d-none');
        }
    });

    buttons.forEach(btn => {
        if (btn === selectedBtn) {
            btn.classList.add("btn-success");
            btn.classList.remove("btn-secondary");
        } else {
            btn.classList.remove("btn-success");
            btn.classList.add("btn-secondary");
        }
    });
}