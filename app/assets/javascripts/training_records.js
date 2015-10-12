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
  if (value == "Windshear"){
    $(".windshear").show(200);
  }
  else {
    $(".windshear").hide(200);
  }
  if (value == "High Minimums"){
    $(".high_minimums").show(200);
  }
  else {
    $(".high_minimums").hide(200);
  }  
});