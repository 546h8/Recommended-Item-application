$(function() {
  $('#img-file').on('change', function(e) {
      var file = e.target.files[0];

      var fileReader = new FileReader();
      fileReader.onload = function() {
          var dataUri = this.result;
          $('#img-preview').attr('src', dataUri);
      }
      fileReader.readAsDataURL(file);
  });
});