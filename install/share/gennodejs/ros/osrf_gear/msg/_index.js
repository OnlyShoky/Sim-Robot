
"use strict";

let DetectedObject = require('./DetectedObject.js');
let Proximity = require('./Proximity.js');
let StorageUnit = require('./StorageUnit.js');
let PopulationState = require('./PopulationState.js');
let Order = require('./Order.js');
let VacuumGripperState = require('./VacuumGripperState.js');
let KitTray = require('./KitTray.js');
let Kit = require('./Kit.js');
let KitObject = require('./KitObject.js');
let LogicalCameraImage = require('./LogicalCameraImage.js');
let TrayContents = require('./TrayContents.js');
let Model = require('./Model.js');
let ConveyorBeltState = require('./ConveyorBeltState.js');

module.exports = {
  DetectedObject: DetectedObject,
  Proximity: Proximity,
  StorageUnit: StorageUnit,
  PopulationState: PopulationState,
  Order: Order,
  VacuumGripperState: VacuumGripperState,
  KitTray: KitTray,
  Kit: Kit,
  KitObject: KitObject,
  LogicalCameraImage: LogicalCameraImage,
  TrayContents: TrayContents,
  Model: Model,
  ConveyorBeltState: ConveyorBeltState,
};
