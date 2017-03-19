$(document).on('ready', function() {

  $("body").on("click", "#get_people", getPeopleList)

  $("body").on("click", "#post_person", makeNewPerson)

  $("body").on("click", "#update_person", updatePerson)

  $("body").on("click", "#delete_person", deletePerson)

  $("body").on("click", "#reload", reload)


})


// $('form').submit(function(event) {
//   //prevent form from submitting the default way
//   event.preventDefault();
//
//   var values = $(this).serialize();
//
//   var posting = $.post('/posts', values);
//
//   posting.done(function(data) {
//     // ->: handle response
//   });


function getPeopleList(e) {
  // debugger;

  history.replaceState({}, document.title, ".");
  $.ajax({
    method: "get",
    url: "/people",
    error: function(data) {
      // debugger
    },
    success: function(data) {
      $(".people_list").empty().prepend("<br>").append(`<h4>All People</h4>`)
      data.forEach(function(e){
        // debugger
        // print = {id: e.id, name: e.name, favoriteCity: e.favoriteCity}
        // var id = e.id
        // var link = $(document.createElement("a"))
        // link.attr('href', `/people/${id}`)
        // link.attr('class', `people`)
        // link.attr('id', `${id}`)
        // link.text(e.name)
        // link.text ++ e.favoriteCity ++ id

        // $(".people_list").append(link).append(`<br>`)
        // $(".people_list").append(print).append(`<br>`)

        // debugger

      })

    }})

}



function makeNewPerson(e) {
  // debugger

  e.preventDefault()
  var name = $("input[name*=name_for_post]").val()
  var favoriteCity = $("input[name*=favoriteCity_for_post]").val()


  $.ajax({
    method: "post",
    url: "/people",
    data: {
        name: name,
        favoriteCity: favoriteCity
      },
    error: function(e) {
    },
    success: function(e) {

      // var text = `name: ${e.name} <br> favoriteCity: ${e.favoriteCity} <br>`
      // $(".show_person").html(text)
    }
  })
}


function updatePerson(e) {
  var favoriteCity = $("input[name*=favoriteCity_for_put]").val()
    $.ajax({
      method: "put",
      url: "/people/1",
      data: {
        favoriteCity: favoriteCity
      },
      error: function(e){
      },
      success: function(e) {

        // var text = `name: ${e.name} <br> new value for attribute favoriteCity: <br> ${e.favoriteCity}`
        // $(".person_one_show_update").html(text)
      }
    })

}

function deletePerson(e) {

    $.ajax({
      method: "delete",
      url: "/people/1",
      error: function(e){
      },
      success: function(e) {
        $(".delete_message").html(e.message)



      }
    })

}

// function reload(e) {
//
// }
