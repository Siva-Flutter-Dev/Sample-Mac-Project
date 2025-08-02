import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouting{
  final BuildContext context;
  AppRouting(this.context);

  to({required String route}){
    GoRouter.of(context).go(route);
  }

  push({required String route}){
    GoRouter.of(context).push(route);
  }

  replace({required String route}){
    GoRouter.of(context).replace(route);
  }

  goNamed({required String route}){
    GoRouter.of(context).goNamed(route);
  }

  pushNamed({required String route}){
    GoRouter.of(context).pushNamed(route);
  }

  replaceNamed({required String route}){
    GoRouter.of(context).replaceNamed(route);
  }

  refresh(){
    GoRouter.of(context).refresh();
  }

  pop({required String route}){
    GoRouter.of(context).pop();
  }

}