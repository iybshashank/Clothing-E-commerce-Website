// Open popup shop item
  $('.quickview__icon').click(function() {
    $('.overlay').css({'opacity': '1', 'visibility': 'visible'});

    // Change popup clothing-item: img, name, price
    var imgid = "#"+$(this).attr('id').replace(/\s/g,'') + "Img";
    var imgsrc = $(imgid).prop('src');
    var price = document.getElementById($(this).attr('id').replace(/\s/g,'') + "Price").innerHTML;

    $('#clothingImg').prop('src', imgsrc);
    document.getElementById('clothingName').innerHTML = $(this).attr('id');
    document.getElementById("clothingPrice").innerHTML = price;
    
  });

  // Popup close
  $('#closeIcon').click(function() {
    $('.popup, .overlay').css({
      'opacity': '0',
      'visibility': 'hidden'});
      $('body').css('overflow', 'visible');

  })


