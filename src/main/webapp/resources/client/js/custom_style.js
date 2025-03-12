// $(document).ready(function () {
//     $(".category_product_carousel").owlCarousel({
//         loop: true,
//         margin: 30,
//         nav: false,
//         dots: true,
//         autoplay: true,
//         autoplayTimeout: 3000,
//         autoplayHoverPause: true,
//         responsive: {
//             0: { items: 1 },
//             600: { items: 2 },
//             1000: { items: 4 },
//         },
//     });

//     $(".brand_container").owlCarousel({
//         loop: true,
//         margin: 20 /* Khoảng cách giữa các ảnh */,
//         nav: false,
//         dots: false,
//         autoplay: true,
//         autoplayTimeout: 2500,
//         autoplayHoverPause: false,
//         responsive: {
//             0: { items: 2 } /* 2 ảnh khi màn hình nhỏ */,
//             600: { items: 3 } /* 3 ảnh khi màn hình trung bình */,
//             1000: { items: 5 } /* 5 ảnh khi màn hình lớn */,
//         },
//     });
// });

$(document).ready(function () {
    function fixOwlCarousel(selector) {
        $(selector).on(
            "initialized.owl.carousel resized.owl.carousel",
            function () {
                setTimeout(() => {
                    $(this).find(".owl-stage").css("width", "100%");
                }, 100);
            }
        );
    }

    $(".category_product_carousel").owlCarousel({
        loop: true,
        margin: 30,
        nav: false,
        dots: true,
        autoplay: true,
        autoplayTimeout: 3000,
        autoplayHoverPause: true,
        responsive: {
            0: { items: 1 },
            600: { items: 2 },
            1000: { items: 4 },
        },
        onInitialized: function () {
            fixOwlCarousel(".category_product_carousel");
        },
    });

    $(".brand_container").owlCarousel({
        loop: true,
        margin: 20,
        nav: false,
        dots: false,
        autoplay: true,
        autoplayTimeout: 2500,
        autoplayHoverPause: false,
        responsive: {
            0: { items: 2 },
            600: { items: 3 },
            1000: { items: 5 },
        },
        onInitialized: function () {
            fixOwlCarousel(".brand_container");
        },
    });
});
