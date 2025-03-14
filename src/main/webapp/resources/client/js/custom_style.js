
function plusQuanlity(number){
    event.preventDefault();
    // alert("Thêm vào giỏ hàng thành công");
    $('#quantity').val(parseInt($('#quantity').val()) + number);
}

function minusQuanlity(){
    event.preventDefault();

    if ($('#quantity').val() > 0) {
        $('#quantity').val(parseInt($('#quantity').val()) - 1);
    }
}

//  function changeQuantity(change) {
//             let input = document.getElementById("quantity");
//             let value = parseInt(input.value) || 0; // Nếu input rỗng thì lấy giá trị 0
//             value += change;

//             // Đảm bảo số lượng không nhỏ hơn 0
//             if (value >= 0) {
//                 input.value = value;
//             } else {
//                 input.value = 0;
//             }
//         }

//         function validateInput() {
//             let input = document.getElementById("quantity");
//             let value = parseInt(input.value) || 0;

//             // Ngăn nhập số âm
//             if (value < 0) {
//                 input.value = 0;
//             }
//         }

let selectedProducts = {};

function loadProducts(category) {
    let products = {
        'CPU': [
            {name: 'Intel i5', price: 5000000, image: 'cpu.png'},
            {name: 'Intel i7', price: 8000000, image: 'cpu.png'}
        ],
        'RAM': [
            {name: '8GB DDR4', price: 1500000, image: 'ram.png'},
            {name: '16GB DDR4', price: 2500000, image: 'ram.png'}
        ]
    };

    let html = '';
    products[category].forEach((p, index) => {
        html += `<div class='product-item d-flex align-items-center mb-2' onclick='selectProduct("${category}", ${index})'>
                    <img src='${p.image}' class='me-3' width='50'>
                    <span>${p.name} - ${p.price.toLocaleString()} VNĐ</span>
                 </div>`;
    });

    document.getElementById('productList').innerHTML = html;
}

function selectProduct(category, index) {
    let products = {
        'CPU': [
            {name: 'Intel i5', price: 5000000, image: 'cpu.png'},
            {name: 'Intel i7', price: 8000000, image: 'cpu.png'}
        ],
        'RAM': [
            {name: '8GB DDR4', price: 1500000, image: 'ram.png'},
            {name: '16GB DDR4', price: 2500000, image: 'ram.png'}
        ]
    };
    let product = products[category][index];

    // Nếu sản phẩm đã tồn tại, chỉ tăng số lượng
    if (selectedProducts[category]) {
        selectedProducts[category].quantity++;
    } else {
        selectedProducts[category] = {...product, quantity: 1};
    }

    updateTable();
    updateCardQuantity(category);
    document.querySelector('#productModal .btn-close').click();
}

function updateTable() {
    let tableBody = document.getElementById('productTable');
    tableBody.innerHTML = '';

    for (let category in selectedProducts) {
        let product = selectedProducts[category];
        let total = product.price * product.quantity;
        let row = `<tr id="row-${category}">
            <td><img src="${product.image}" width="50"></td>
            <td>${product.name}</td>
            <td>${product.quantity}</td>
            <td>${product.price.toLocaleString()}</td>
            <td>${total.toLocaleString()}</td>
        </tr>`;
        tableBody.innerHTML += row;
    }
}

function updateCardQuantity(category) {
    let inputField = document.querySelector(`.config-card[data-category="${category}"] input`);
    if (inputField) {
        inputField.value = selectedProducts[category] ? selectedProducts[category].quantity : 1;
    }
}

function changeQuantity(category, value) {
    if (selectedProducts[category]) {
        selectedProducts[category].quantity = parseInt(value);
        if (selectedProducts[category].quantity <= 0) {
            delete selectedProducts[category];
        }
        updateTable();
    }
}

function removeProduct(category) {
    delete selectedProducts[category];
    document.getElementById('row-' + category)?.remove();
    updateCardQuantity(category);
}
