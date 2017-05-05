var postPoop = function(event) {
  console.log(this)
  var issueId = $(this).data().issueId;
  var politicianId = $(this).data().politicianId;
  var url = "/issues/" + issueId + "/politicians/" + politicianId + "/poops"
  $.ajax({
    url: url,
    type: 'POST'
  })
  .done(function(response) {
    $(".poop-new").html(response)
  })
  .fail(function(request) {
    // TODO: error handling?
    alert(request.body);
  });
}

$(document).ready(function() {
  $(".call-button").on('click', postPoop);
});
