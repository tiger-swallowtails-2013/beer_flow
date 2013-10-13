var Answer = {
  init: function() {
    $('form#new_answer').on('ajax:success', this.addQuestion);
  },

  addQuestion: function(event, data) {
    $('.answers').append(data);
    this.reset();
  }

}

$(document).ready(function(){
  Answer.init();
})