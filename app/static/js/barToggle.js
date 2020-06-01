function toggleNav() {
  const sidebar = document.querySelector('#sidebar');
  const content = document.querySelector('#content');
  const sidebarCollapse = document.querySelector('#sidebarCollapse');


  sidebar.classList.toggle('active');
  content.classList.toggle('full-screen');
  sidebarCollapse.classList.toggle('active');
}

function closeNav() {
  const sidebar = document.querySelector('#sidebar');
  const content = document.querySelector('#content');
  const sidebarCollapse = document.querySelector('#sidebarCollapse');

  sidebar.classList.toggle('active');
  content.classList.toggle('full-screen');
  sidebarCollapse.classList.toggle('active');
}

