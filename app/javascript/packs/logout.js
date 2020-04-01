const logout = document.querySelector('.logout');

const redirectLogout = () => {
  logout.addEventListener('click', (event) => {
    document.location.reload(true);
  });
}

export { redirectLogout } ;

