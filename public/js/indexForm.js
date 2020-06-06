$(".alert").hide();
$("#submit").on("click", function(e) {
  e.preventDefault();
  var city = $("#location")
    .val()
    .trim();
  console.log(city);
  $.ajax({
    url: "api/location-search/" + city,
    type: "GET"
  }).then(function(data) {
    console.log(data);
    $("#dest-time").text(data.rows[0].elements[0].duration.text);
  });
  $(".alert").show();
});
