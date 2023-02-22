function handleAutomobileSectionChange(event) {
    const sectionId = event.currentTarget.dataset.sectionid;
    const sections = document.querySelectorAll('.automobileFormSection');

    sections.forEach(section => {
        if (section.id === sectionId) {
            section.classList.remove('d-none');
        } else {
            section.classList.add('d-none');
        }
    });
}