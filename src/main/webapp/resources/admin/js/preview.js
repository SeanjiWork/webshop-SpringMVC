$(document).ready(() => {
    const photoInp = $("#photo");
    let file;

    // Xử lý khi chọn file
    photoInp.change(function () {
        file = this.files[0];
        if (file) {
            let reader = new FileReader();
            reader.onload = function (event) {
                $("#imgPreview").attr("src", event.target.result).fadeIn();
            };
            reader.readAsDataURL(file);
        }
    });

    // Xử lý khi bấm nút "Xóa ảnh"
    $("#deleteBtn").click(() => {
        if (file) {
            $("#imgPreview").attr("src", "#").fadeOut();
            $("#photo").val("");
            file = null;
            alert("Image deleted successfully!");
        } else {
            alert("No image to delete!");
        }
    });
});