  $(document).ready(function () {

      $(".item_add").click(function () {
          var id = $(this).attr("data-id");
          $.post("/cart/add/" + id, {}, function (data) {
              console.log(data);
              var result = JSON.parse(data);
              $(".simpleCart_total").html(result.sum + " &#8381;");
              $(".simpleCart_quantity").html("кол-во: " + result.count);

          });
          return false;
      });


      $(".simpleCart_empty").click(function () {
          $.post("/cart/clear", {}, function (data) {
              console.log(data);
              var result = JSON.parse(data);
              $(".simpleCart_total").html(result.sum.toString() + " &#8381;");
              $(".simpleCart_quantity").html("кол-во: " + result.count);
              $('.cart-header').fadeOut('slow', function () {
                  $('.cart-header').remove();
              });
          });
      });


      $('.myclose').click(function () {
          var id = $(this).attr("data-id");
          var obj = this;
          $.post("/cart/remove/" + id, {}, function (data) {
              console.log(data);
              var result = JSON.parse(data);
              $(".simpleCart_total").html(result.sum + " &#8381;");
              $(".simpleCart_quantity").html("кол-во: " + result.count);
              $(obj).closest('.cart-header').fadeOut('slow', function () {
                  $(obj).closest('.cart-header').remove();
              });
          });
      });

      $.post("/cart/info", {}, function (data) {
        console.log(data);
          const result = JSON.parse(data);
          $(".simpleCart_total").html(result.sum + " &#8381;");
          $(".simpleCart_quantity").html("кол-во: " + result.count);
      });
  });