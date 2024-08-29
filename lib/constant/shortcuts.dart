import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const darkModeActivator = SingleActivator(LogicalKeyboardKey.keyD);
const postActivatorN = SingleActivator(LogicalKeyboardKey.keyN);
const postActivatorP = SingleActivator(LogicalKeyboardKey.keyP);
const searchActivator = SingleActivator(LogicalKeyboardKey.keyS);
const replyActivator = SingleActivator(LogicalKeyboardKey.keyR);
const reactActivatorE = SingleActivator(LogicalKeyboardKey.keyE);
const reactActivatorA = SingleActivator(LogicalKeyboardKey.keyA);
const renoteActivator = SingleActivator(LogicalKeyboardKey.keyQ);
const focusUpActivator = SingleActivator(LogicalKeyboardKey.keyK);
const focusDownActivator = SingleActivator(LogicalKeyboardKey.keyJ);
const showMenuActivatorM = SingleActivator(LogicalKeyboardKey.keyM);
const showMenuActivatorO = SingleActivator(LogicalKeyboardKey.keyO);
const showContentActivator = SingleActivator(LogicalKeyboardKey.keyS);
const dismissActivator = SingleActivator(LogicalKeyboardKey.escape);
const submitActivator = SingleActivator(
  LogicalKeyboardKey.enter,
  control: true,
);
const previousActivator = SingleActivator(
  LogicalKeyboardKey.arrowLeft,
  includeRepeats: false,
);
const nextActivator = SingleActivator(
  LogicalKeyboardKey.arrowRight,
  includeRepeats: false,
);

const disablingTextShortcuts = {
  darkModeActivator: DoNothingAndStopPropagationTextIntent(),
  postActivatorN: DoNothingAndStopPropagationTextIntent(),
  postActivatorP: DoNothingAndStopPropagationTextIntent(),
  searchActivator: DoNothingAndStopPropagationTextIntent(),
  replyActivator: DoNothingAndStopPropagationTextIntent(),
  reactActivatorE: DoNothingAndStopPropagationTextIntent(),
  reactActivatorA: DoNothingAndStopPropagationTextIntent(),
  renoteActivator: DoNothingAndStopPropagationTextIntent(),
  focusUpActivator: DoNothingAndStopPropagationTextIntent(),
  focusDownActivator: DoNothingAndStopPropagationTextIntent(),
  showMenuActivatorM: DoNothingAndStopPropagationTextIntent(),
  showMenuActivatorO: DoNothingAndStopPropagationTextIntent(),
};
