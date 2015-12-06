function initMap() {
  var $submissionLocation = $('#submission_location');

  if ($submissionLocation.length) {
    new google.maps.places.Autocomplete($submissionLocation[0]);

    $submissionLocation.on('keydown', function(e) {
      if (e.which === 13) {
        e.preventDefault();
      }
    });
  }
}