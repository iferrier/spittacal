const logout = document.querySelector('.logout');

const redirectLogout = () => {
  logout.addEventListener('click', event => {
    console.log(event);
  });
}

export { redirectLogout };

