<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">


    <!-- Mirrored from maraviyainfotech.com/wrapbootstrap/grabit-html/admin-html/add-product.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 09 Mar 2025 14:25:40 GMT -->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="keywords" content="admin, dashboard, crm, analytics, ecommerce, team, vendor, ai chat bot, backend, panel" />
        <meta name="description" content="LouisVuitton - Admin.">
        <meta name="author" content="LouisVuitton">

        <title>LouisVuitton - Admin.</title>

        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/img/favicon/favicon.ico">

        <!-- Icon CSS -->
        <link href="assets/css/vendor/materialdesignicons.min.css" rel="stylesheet">
        <link href="assets/css/vendor/remixicon.css" rel="stylesheet">

        <!-- Vendor CSS -->
        <link href='assets/css/vendor/datatables.bootstrap5.min.css' rel='stylesheet'>
        <link href='assets/css/vendor/responsive.datatables.min.css' rel='stylesheet'>
        <link href='assets/css/vendor/daterangepicker.css' rel='stylesheet'>
        <link href="assets/css/vendor/simplebar.css" rel="stylesheet">
        <link href="assets/css/vendor/bootstrap.min.css" rel="stylesheet">
        <link href="assets/css/vendor/apexcharts.css" rel="stylesheet">
        <link href="assets/css/vendor/jquery-jvectormap-1.2.2.css" rel="stylesheet">

        <!-- Main CSS -->
        <link id="main-css" href="assets/css/style.css" rel="stylesheet">
        <script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
        <style>
            .avatar-container {
                display: flex;
                gap: 20px; /* Khoáº£ng cÃ¡ch giá»¯a hai áº£nh */
                justify-content: center; /* Canh giá»¯a */
                align-items: center;
            }

            .avatar-upload {
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            .gi-image-preview {
                width: 250px; /* Äiá»u chá»‰nh kÃ­ch thÆ°á»›c áº£nh */
                height: 250px;
                object-fit: cover;
            }

            /* NÃºt dáº¥u cá»™ng */
            .add-thumb {
                width: 60px;
                height: 60px;
                display: flex;
                align-items: center;
                justify-content: center;
                border-radius: 50%;
                background-color: #7bc043; /* Xanh lÃ¡ */
                color: white;
                font-size: 30px;
                cursor: pointer;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
                transition: all 0.3s ease-in-out;
            }

            .add-thumb:hover {
                background-color: #6aa634;
            }

            /* Äáº·t dáº¥u cá»™ng á»Ÿ giá»¯a dÃ²ng cuá»‘i */
            .thumb-upload-container::after {
                content: "";
                flex: auto;
            }

            .thumb-upload-set {
                display: flex;
                flex-wrap: wrap;
                justify-content: center; /* CÄƒn giá»¯a thay vÃ¬ cháº¡y tá»« trÃ¡i */
                gap: 10px; /* Táº¡o khoáº£ng cÃ¡ch Ä‘á»u giá»¯a cÃ¡c áº£nh */
                max-width: 450px; /* Äiá»u chá»‰nh theo giao diá»‡n */
                margin: 0 auto; /* Giá»¯ vá»‹ trÃ­ giá»¯a trang */
            }

            .thumb-remove {
                position: absolute;
                top: 5px;  /* ÄÆ°a lÃªn cao hÆ¡n */
                left: 5px; /* Äáº£m báº£o náº±m sÃ¡t gÃ³c trÃ¡i */
                width: 30px;
                height: 30px;
                background-color: white;
                border-radius: 50%;
                box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
                display: flex;
                justify-content: center;
                align-items: center;
                cursor: pointer;
                z-index: 10;
            }

            .thumb-remove i {
                font-size: 18px;
                color: red; /* Chuyá»ƒn mÃ u Ä‘á» */
            }
        </style>
        

    </head>

    <body>
        <main class="wrapper sb-default">
            <!-- Loader -->
            <div id="gi-overlay">
                <div class="loader"></div>
            </div>

            <!-- Header -->
            <jsp:include page="header.jsp"/>

            <!-- sidebar -->
            <jsp:include page="sidebar.jsp"/>

            <!-- main content -->
            <div class="gi-main-content">
                <div class="container-fluid">
                    <!-- Page title & breadcrumb -->
                    <div class="gi-page-title gi-page-title-2">
                        <div class="gi-breadcrumb">
                            <h5>Add Product</h5>
                            <ul>
                                <li><a href="dashboard">LouisVuitton</a></li>
                                <li>Add Product</li>
                            </ul>
                        </div>
                    </div>
                    <c:set var="p" value="${requestScope.pro}"/>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="gi-card card-default">
                                <div class="gi-card-content">
                                    <form action="add-product" method="post" class="row g-3" enctype="multipart/form-data" >
                                        <div class="row gi-product-uploads">
                                            <div class="col-lg-4 mb-991">
                                                <div class="gi-vendor-img-upload">
                                                    <div class="gi-vendor-main-img">
                                                        <div class="avatar-container">
                                                            <div class="avatar-upload">
                                                                <div class="avatar-edit">
                                                                    <input type='file' id="product_main" class="gi-image-upload" accept=".png, .jpg, .jpeg" name="picture" required>
                                                                    <label><i class="ri-pencil-line"></i></label>
                                                                </div>
                                                                <div class="avatar-preview gi-preview">
                                                                    <div class="imagePreview gi-div-preview">
                                                                        <img  class="gi-image-preview" src="assets/images/product/preview.jpg" alt="edit " >
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="avatar-upload">
                                                                <div class="avatar-edit">
                                                                    <input type='file' id="product_main1" class="gi-image-upload" accept=".png, .jpg, .jpeg" name="picture" required>
                                                                    <label><i class="ri-pencil-line"></i></label>
                                                                </div>
                                                                <div class="avatar-preview gi-preview">
                                                                    <div class="imagePreview gi-div-preview">
                                                                        <img class="gi-image-preview" src="assets/images/product/preview.jpg" alt="edit">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="thumb-upload-set colo-md-12">

                                                            <div class="thumb-upload">
                                                                <div class="thumb-remove" onclick="removeThumbnail(this)"><i class="ri-close-line"></i></div>
                                                                <div class="thumb-edit">
                                                                    <input type='file' id="thumbUpload01"
                                                                           class="gi-image-upload" 
                                                                           accept=".png, .jpg, .jpeg" name="picture">
                                                                    <label><i class="ri-pencil-line"></i></label>
                                                                </div>
                                                                <div class="thumb-preview gi-preview">
                                                                    <div class="image-thumb-preview">
                                                                        <img class="image-thumb-preview gi-image-preview"
                                                                             src="assets/images/product/preview.jpg"
                                                                             alt="edit">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="thumb-upload">
                                                                <div class="thumb-remove" onclick="removeThumbnail(this)"><i class="ri-close-line"></i></div>
                                                                <div class="thumb-edit">
                                                                    <input type='file' id="thumbUpload01"
                                                                           class="gi-image-upload"
                                                                           accept=".png, .jpg, .jpeg" name="picture">
                                                                    <label><i class="ri-pencil-line"></i></label>
                                                                </div>
                                                                <div class="thumb-preview gi-preview">
                                                                    <div class="image-thumb-preview">
                                                                        <img class="image-thumb-preview gi-image-preview"
                                                                             src="assets/images/product/preview.jpg"
                                                                             alt="edit">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="thumb-upload">
                                                                <div class="thumb-remove" onclick="removeThumbnail(this)"><i class="ri-close-line"></i></div>
                                                                <div class="thumb-edit">
                                                                    <input type='file' id="thumbUpload01"
                                                                           class="gi-image-upload"
                                                                           accept=".png, .jpg, .jpeg" name="picture">
                                                                    <label><i class="ri-pencil-line"></i></label>
                                                                </div>
                                                                <div class="thumb-preview gi-preview">
                                                                    <div class="image-thumb-preview">
                                                                        <img class="image-thumb-preview gi-image-preview"
                                                                             src="assets/images/product/preview.jpg"
                                                                             alt="edit">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="thumb-upload">
                                                                <div class="thumb-remove" onclick="removeThumbnail(this)"><i class="ri-close-line"></i></div>
                                                                <div class="thumb-edit">
                                                                    <input type='file' id="thumbUpload01"
                                                                           class="gi-image-upload"
                                                                           accept=".png, .jpg, .jpeg" name="picture">
                                                                    <label><i class="ri-pencil-line"></i></label>
                                                                </div>
                                                                <div class="thumb-preview gi-preview">

                                                                    <div class="image-thumb-preview">
                                                                        <img class="image-thumb-preview gi-image-preview"
                                                                             src="assets/images/product/preview.jpg"
                                                                             alt="edit">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="thumb-upload">
                                                                <div class="thumb-remove" onclick="removeThumbnail(this)"><i class="ri-close-line"></i></div>
                                                                <div class="thumb-edit">
                                                                    <input type='file' id="thumbUpload01"
                                                                           class="gi-image-upload"
                                                                           accept=".png, .jpg, .jpeg" name="picture">
                                                                    <label><i class="ri-pencil-line"></i></label>
                                                                </div>
                                                                <div class="thumb-preview gi-preview">
                                                                    <div class="image-thumb-preview">
                                                                        <img class="image-thumb-preview gi-image-preview"
                                                                             src="assets/images/product/preview.jpg"
                                                                             alt="edit">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="thumb-upload">
                                                                <div class="thumb-remove" onclick="removeThumbnail(this)"><i class="ri-close-line"></i></div>
                                                                <div class="thumb-edit">
                                                                    <input type='file' id="thumbUpload01"
                                                                           class="gi-image-upload"
                                                                           accept=".png, .jpg, .jpeg" name="picture">
                                                                    <label><i class="ri-pencil-line"></i></label>
                                                                </div>
                                                                <div class="thumb-preview gi-preview">
                                                                    <div class="image-thumb-preview">
                                                                        <img class="image-thumb-preview gi-image-preview"
                                                                             src="assets/images/product/preview.jpg"
                                                                             alt="edit">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="thumb-upload-container thumb-upload">

                                                                <!-- ÄÃ¢y lÃ  nÆ¡i cÃ¡c thumbnail sáº½ Ä‘Æ°á»£c thÃªm vÃ o -->
                                                            </div>
                                                            <div class="add-thumb" onclick="addThumbnail()">+</div>


                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-lg-8">
                                                <div class="gi-vendor-upload-detail">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <label for="inputEmail4" class="col-12 col-form-label">Id</label>
                                                            <input type="text" class="form-control slug-title" id="inputEmail4" value="${requestScope.id}" name="id" readonly>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label for="inputEmail4" class="col-12 col-form-label">Product name</label>
                                                            <input type="text" class="form-control slug-title" id="inputEmail4" name="name" required>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6 ">
                                                            <label class="col-12 col-form-label">Select Gender</label>
                                                            <select class="form-control form-select" name="opg">


                                                                <option value="1">Women</option>
                                                                <option value="2">Men</option>
                                                                <option value="3">Both</option>




                                                            </select>
                                                        </div>

                                                        <div class="col-md-6 ">
                                                            <label class="col-12 col-form-label">Select Categories</label>
                                                            <select class="form-control form-select" name="opc">
                                                                <c:forEach var="c" items="${requestScope.listC1}">

                                                                    <option value="${c.id}">${c.name}</option>

                                                                </c:forEach>

                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-12">
                                                        <label for="slug" class="col-12 col-form-label">Description</label> 
                                                        <textarea name="description" id="slug" name="slug" class="form-control here set-slug ckeditor" rows="3"></textarea>

                                                    </div>
                                                    <div class="col-md-12">
                                                        <label class="col-12 col-form-label">Sub Description</label>

                                                        <textarea name="subDescription" class="form-control ckeditor" rows="2"></textarea>

                                                    </div>


                                                    <div class="col-md-6 pt-2">
                                                        <label class="col-12 col-form-label " >Price <span>( In USD
                                                                )</span></label>
                                                        <input type="number" step="0.01" class="form-control" id="price1" name="price" required>
                                                    </div>
                                                    <div class="col-md-6 pt-2">
                                                        <label class="col-12 col-form-label ">Quantity</label>
                                                        <input type="number" class="form-control" id="quantity1" name="quantity" requireds>
                                                    </div>
                                                    <div class="col-md-6  pt-2">
                                                        <label class="col-12 col-form-label">Sale <span></span></label>
                                                        <input type="number" step="0.01" class="form-control" id="price1" name="sale" required>
                                                    </div><br/>

                                                    <div class="col-md-12">
                                                        <button type="submit" class="btn gi-btn-primary">Submit</button>
                                                    </div>


                                                </div>
                                            </div>
                                        </div>
                                    </form>    
                                    <script>
                                        CKEDITOR.replaceAll('ckeditor');
                                    </script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- footer -->
            <jsp:include page="footer.jsp"/>
        </main>

        <!-- Vendor Custom -->
        <script src="assets/js/vendor/jquery-3.6.4.min.js"></script>
        <script src="assets/js/vendor/simplebar.min.js"></script>
        <script src="assets/js/vendor/bootstrap.bundle.min.js"></script>
        <script src="assets/js/vendor/apexcharts.min.js"></script>
        <script src="assets/js/vendor/bootstrap-tagsinput.js"></script>
        <script src="assets/js/vendor/jquery-jvectormap-1.2.2.min.js"></script>
        <script src="assets/js/vendor/jquery-jvectormap-world-mill-en.js"></script>
        <!-- Data Tables -->
        <script src='assets/js/vendor/jquery.datatables.min.js'></script>
        <script src='assets/js/vendor/datatables.bootstrap5.min.js'></script>
        <script src='assets/js/vendor/datatables.responsive.min.js'></script>
        <!-- Caleddar -->
        <script src="assets/js/vendor/jquery.simple-calendar.js"></script>
        <!-- Date Range Picker -->
        <script src="assets/js/vendor/moment.min.js"></script>
        <script src="assets/js/vendor/daterangepicker.js"></script>
        <script src="assets/js/vendor/date-range.js"></script>

        <!-- Main Custom -->
        <script src="assets/js/main.js"></script>
        <script>
                                        function removeThumbnail(element) {
                                            let thumbDiv = element.closest(".thumb-upload"); // Láº¥y div chá»©a áº£nh
                                            let img = thumbDiv.querySelector("img");
                                            let imagePath = img ? img.getAttribute("src") : null;

                                            if (imagePath) {
                                                let input = document.createElement("input");
                                                input.type = "hidden";
                                                input.name = "deletedImages";
                                                input.value = imagePath;
                                                document.forms[0].appendChild(input);
                                            }

                                            // XÃ³a áº£nh khá»i giao diá»‡n
                                            thumbDiv.remove();
                                        }
                                        document.addEventListener("DOMContentLoaded", function () {
                                            const container = document.querySelector(".thumb-upload-container");
                                            if (!container) {
                                                console.error("âš ï¸ Lá»–I: KhÃ´ng tÃ¬m tháº¥y .thumb-upload-container! Kiá»ƒm tra láº¡i HTML.");
                                                return;
                                            }

                                            console.log("âœ… ÄÃ£ tÃ¬m tháº¥y .thumb-upload-container!");
                                            function addThumbnail() {
                                                console.log("ThÃªm áº£nh má»›i...");
                                                // Táº¡o má»™t tháº» div má»›i cho áº£nh thumbnail
                                                const newThumb = document.createElement("div");
                                                newThumb.classList.add("thumb-upload");
                                                newThumb.innerHTML = `
                                                <div class="thumb-remove" onclick="removeThumbnail(this)"><i class="ri-close-line"></i></div> 
                <div class="thumb-edit">
                    <input type="file" class="gi-image-upload" accept=".png, .jpg, .jpeg" name="picture">
                    <label><i class="ri-pencil-line"></i></label>
                </div>
                <div class="thumb-preview gi-preview">
                    <div class="image-thumb-preview">
                        <img class="gi-image-preview" src="assets/images/product/preview.jpg" alt="edit">
                    </div>
                </div>
            `;
                                                // ThÃªm thumbnail má»›i vÃ o container
                                                container.appendChild(newThumb);
                                            }

                                            // Láº¯ng nghe sá»± kiá»‡n click cho nÃºt "+"
                                            const addButton = document.querySelector(".add-thumb");
                                            if (addButton) {
                                                addButton.addEventListener("click", function (event) {
                                                    event.preventDefault(); // NgÄƒn cháº·n hÃ nh vi máº·c Ä‘á»‹nh
                                                    addThumbnail();
                                                });
                                            } else {
                                                console.error("Lỗi");
                                            }
                                        });
        </script>


    </body>


    <!-- Mirrored from maraviyainfotech.com/wrapbootstrap/grabit-html/admin-html/add-product.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 09 Mar 2025 14:25:41 GMT -->
</html>
