// Toggle content HTC profile

const name = document.querySelector('.name');
const description = document.querySelector('.description')

const toggleContent = () => { name.addEventListener('click', event => {
    description.classList.toggle('is-visible');
  })
};

export { toggleContent };
