
  $(document).ready(function(){
    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
    $('.modal-trigger').leanModal();
  

    // Materialize.toast(message, displayLength, className, completeCallback);
  Materialize.toast('', 4000); // 4000 is the duration of the toast


  setInterval(function () {

        $('.time-rect-container').load('/dashboard/give_time');

    }, 1000);

  });