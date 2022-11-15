import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';


class AdaptiveFlatButton extends StatelessWidget {
  final String text;
  final Function handler;
  AdaptiveFlatButton(this.text,this.handler);
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
                          ? CupertinoButton(
                              child: Text(
                                text,
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: handler,
                            )
                          : FlatButton(
                              child: Text(
                                text,
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: handler,
                            );
  }
}