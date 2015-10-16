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
  if (value == "1800 RVR"){
    $("._1800_rvr").show(200);
  }
  else {
    $("._1800_rvr").hide(200);
  }
  if (value == "RNAV"){
    $(".rnav").show(200);
  }
  else {
    $(".rnav").hide(200);
  }
  if (value == "Category II"){
    $(".category_ii").show(200);
  }
  else {
    $(".category_ii").hide(200);
  }
  if (value == "Oral"){
    $(".oral").show(200);
  }
  else {
    $(".oral").hide(200);
  }  
  if (value == "Proficiency Check Simulator"){
    $(".proficiency_check_simulator").show(200);
  }
  else {
    $(".proficiency_check_simulator").hide(200);
  }
  if (value == "LOFT"){
    $(".loft").show(200);
  }
  else {
    $(".loft").hide(200);
  }
});