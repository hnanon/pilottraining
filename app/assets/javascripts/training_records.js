$(document).on(".training_types").change(function(){
  var value = $(".training_types option:selected").val();
  if (value == "Cockpit Procedures"){
    $(".cockpit_procedures").show(200);
  }
  else {
    $(".cockpit_procedures").hide(200);
  }
  if (value == "Flight Training Simulator"){
    $(".flight_training_simulator").show(200);
  }
  else {
    $(".flight_training_simulator").hide(200);
  }

});