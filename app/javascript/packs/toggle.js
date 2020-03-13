// Toggle content HTC profile

const flatName = document.querySelector('.flat-name');
const flatDescription = document.querySelector('.flat-users');

const toggleFlatUsers = flatName.addEventListener('click', (event) => {
  flatName.classList.toggle(".flat-users");
})

export { toggleFlatUsers };
