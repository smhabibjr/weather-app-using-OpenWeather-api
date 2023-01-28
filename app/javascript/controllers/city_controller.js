import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="city"
export default class extends Controller {
  connect() {
    console.log("city controller has been connected");

    $("#select_country").change(function (e) { 
      e.preventDefault();
      console.log($(this).val());
      const country = {
        country: $(this).val()
      };
      $.ajax({
        type: "POST",
        url: "/city",
        data: country,
        async: false,
        success: function (response) {
          console.log(response)
          $('#select_state').empty().append('<option value="">Select State</option>')

          $.each(response, function( index, value ) {
            console.log("index : "+ index + " value" + value );

            $('#select_state').append(`<option value="${index}">
                                       ${value}
                                  </option>`);

          });
          console.log("succes");
        },
        error: function(response){
          console.log("error");
        }
      });
    });


    $("#select_state").change(function (e) {
      e.preventDefault();
      console.log($(this).val());
      const state = {
        selected_country: $("#select_country").val(),
        state: $(this).val()
      };
      console.log(state);
      $.ajax({
        type: "POST",
        url: "/city",
        data: state,
        async: false,
        success: function (response) {
          console.log(response)
          $('#select_city').empty().append('<option value="">Select State</option>')
          $.each(response, function( index, value ) {
            console.log("index : "+ index + " city" + value );
            $('#select_city').append(`<option value="${value}">
                                       ${value}
                                  </option>`);

          });
          console.log("succes");
        },
        error: function(response){
          console.log("error");
        }
      });
    });

  }
}
