
const element = document.getElementById('filter')

const filter_by = () => {
  element.addEventListener('click', () => {
    document.getElementById('submit').click();
  });
};

export { filter_by };