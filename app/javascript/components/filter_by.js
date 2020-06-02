
const element = document.getElementById('filter')

const filter_by = () => {
  
  if (element) {
  	element.addEventListener('click', () => {
      document.getElementById('submit').click();
    });

  }
  
};

export { filter_by };