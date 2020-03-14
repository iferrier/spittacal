// Toggle content

const names = document.querySelectorAll('.name');
const description = document.querySelector('.description')

const toggleContent = () => { names.forEach(name => {
    name.addEventListener('click', event => {
      console.log(event);
      description.classList.toggle('is-visible');
    })
  })
};

export { toggleContent };
