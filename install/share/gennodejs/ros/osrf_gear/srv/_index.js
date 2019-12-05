
"use strict";

let ConveyorBeltControl = require('./ConveyorBeltControl.js')
let PopulationControl = require('./PopulationControl.js')
let AGVControl = require('./AGVControl.js')
let VacuumGripperControl = require('./VacuumGripperControl.js')
let GetMaterialLocations = require('./GetMaterialLocations.js')
let SubmitTray = require('./SubmitTray.js')

module.exports = {
  ConveyorBeltControl: ConveyorBeltControl,
  PopulationControl: PopulationControl,
  AGVControl: AGVControl,
  VacuumGripperControl: VacuumGripperControl,
  GetMaterialLocations: GetMaterialLocations,
  SubmitTray: SubmitTray,
};
