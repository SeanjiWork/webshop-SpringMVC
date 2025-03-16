// image user
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

//image product
function previewImage(event) {
    const input = event.target;
    const previewContainer = document.getElementById("imagePreview");

    if (input.files && input.files[0]) {
        const reader = new FileReader();

        reader.onload = function(e) {
            // Xóa nội dung cũ trong ô preview
            previewContainer.innerHTML = '';

            // Tạo thẻ img để hiển thị ảnh
            const img = document.createElement("img");
            img.src = e.target.result;
            previewContainer.appendChild(img);
        };

        reader.readAsDataURL(input.files[0]); // Đọc file ảnh
    }
}