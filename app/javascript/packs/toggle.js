const names = document.querySelectorAll('.name');
const description = document.querySelector('.description');


const toggleContent = () => { names.forEach(name => {
    name.addEventListener('click', event => {
      description.classList.toggle('is-visible');
    })
  })
};

export { toggleContent };

// Other way, not successfull

// const list = document.querySelector('.lists');
// const nodeNames = document.querySelectorAll('.name');
// const names = Array.from(nodeNames);
// const toggleContent = () => {
//   list.addEventListener('click', event => {
//     const clickedItem = names.indexOf(event.target);
//     console.log(names[clickedItem]);
//   })
// };
