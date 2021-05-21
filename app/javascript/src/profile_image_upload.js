$(document).on("change", "#profile_image_upload", function(e){
    if(e.target.files.length){
        let render = new FileReader;
        render.onload = function(e) {
            $('.default-prof-img').removeClass();
            $('.prof-img').remove()
        }
    }
})