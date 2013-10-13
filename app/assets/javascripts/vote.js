var Vote = {
  init: function() {
    $('form#new_answer').on('ajax:success', this.addQuestion);
  }

  addQuestion: function(event, data) {
    $('.answers').append(data);
    $('form#new_answer').get().reset();
  }

}

$(document).ready(function(){
  Answer.init();
})