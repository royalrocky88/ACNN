$(document).ready(function () {
    // Open modal on image click
    $('.thumbnail').click(function () {
        $('#modalImg').attr('src', $(this).attr('src'));
        $('#myModal').css('display', 'block');
    });

    // Close modal when close button or outside modal is clicked
    $('.close, #myModal').click(function () {
        $('#myModal').css('display', 'none');
    });
});