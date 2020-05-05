
document.addEventListener("turbolinks:load",function () {

  // 商品説明文字数

  $("#exhibition_explanation").on('keyup', function () {
    $(".count").text($(this).val().length + '/1000');
  });
  // 販売手数料・利益
  $("#exhibition_price.price").on('keyup', function () {
    if ($(this).val() >= 300 && $(this).val() < 10000000) {
      var commission = Math.trunc($(this).val() / 10)
      $(".sale__right").text('¥' + commission + '');
      $(".sale__right.two").text('¥' + ($(this).val() - commission) + '');
    } else {
      $(".sale__right").text('ー');
    }
  });

  const buildFileField = (index)=> {
    const html = `<div data-index="${index}" class="js-file_group">
                    <input class="js-file" type="file"
                    name="exhibition[images_attributes][${index}][image_url]"
                    id="exhibition_images_attributes_${index}_image_url">
                  </div>`;
    return html;
  }
  $('.hidden-destroy').hide();
  const buildImg = (index, url)=> {
    const html = `<div data-index="${index}" class="img-wrapper">
                    <img data-index="${index}" src="${url}" width="100px" height="100px">
                    <div class="js-remove">削除</div>
                    <label for="exhibition_images_attributes_${index}_image_url" class="edit-label">編集</>
                  </div>`;
    return html;
  }
  let fileIndex = [1,2,3,4,5,6,7,8,9,10];
  lastIndex = $('.js-file_group:last').data('index');
  fileIndex.splice(0, lastIndex);

  $('#image-box').on('change', '.js-file', function(e) {
    var targetIndex = $(this).parent().data('index');
    var file = e.target.files[0];
    var blobUrl = window.URL.createObjectURL(file);

    if (img = $(`img[data-index="${targetIndex}"]`)[0]) {
      img.setAttribute('src', blobUrl);
    } else {  
      $('#previews').append(buildImg(targetIndex, blobUrl));
      $('#image-box').append(buildFileField(fileIndex[0]));
      fileIndex.shift();
      fileIndex.push(fileIndex[fileIndex.length - 1] + 1)
    }
  });

  $('#image-box').on('click', '.js-remove', function() {
    var targetIndex = $(this).parent().data('index');
    var hiddenCheck = $(`input[data-index="${targetIndex}"].hidden-destroy`);
    var targetFile = $(`#exhibition_images_attributes_${targetIndex}_image_url`);
   
    if (hiddenCheck) hiddenCheck.prop('checked', true);
    $(this).parent().remove();
    $(targetFile).parent().remove();

    if ($('.js-file').length == 0) $('#image-box').append(buildFileField(fileIndex[0]));
    $(`img[data-index="${targetIndex}"]`).remove();
  });

});