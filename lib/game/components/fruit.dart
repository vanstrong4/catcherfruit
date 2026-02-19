import 'package:flame/collisions.dart';
import 'dart:math';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import '../fruit_cacther_game.dart';
import 'basket.dart';


enum FruitType { apple, banana, orange, strawberry }
class Fruit extends PositionComponent with HasGameRef<FruitCatcherGame>, CollisionCallbacks {
  
}