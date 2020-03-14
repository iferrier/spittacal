const list = document.querySelector('.lists');
const nodeNames = document.querySelectorAll('.name');
const names = Array.from(nodeNames);
const description = document.querySelector('.description')

console.log(list);

const toggleContent = () => {
  list.addEventListener('click', event => {
    const clickedItem = names.indexOf(event.target);
    console.log(names[clickedItem]);
  })
};

// const toggleContent = () => { names.forEach(name => {
//     name.addEventListener('click', event => {
//       console.log(event);
//       description.classList.toggle('is-visible');
//     })
//   })
// };

export { toggleContent };
