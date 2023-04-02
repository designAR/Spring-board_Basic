window.onload = function() {
  // 페이지네이션 링크 클릭 이벤트
  const paginationLinks = document.querySelectorAll('.pagination a');
  paginationLinks.forEach(function(link) {
    link.addEventListener('click', function(e) {
      e.preventDefault();
      // 클릭한 페이지로 이동하는 코드 작성
    });
  });
};