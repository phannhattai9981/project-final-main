const fileInput = document.querySelector(".avatar-input");
fileInput.addEventListener("change", (event)=>{
    const file = fileInput.files[0];
    const reader = new FileReader();
    const formData = new FormData();
    formData.append("image", file);
    $.ajax({
        url: '/project-final-main/admin/update/admin/avatar',
        method: 'POST',
                    data: formData,
                    processData: false,
                    contentType: false,
                    success: function(response) {
                        window.location.href = "/project-final-main/admin/admin_InfoView";
                    },
                    error: function(jqXHR, textStatus, errorThrown) {
                        console.error(errorThrown);
                    }
                });
})