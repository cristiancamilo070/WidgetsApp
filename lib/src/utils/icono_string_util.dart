import 'package:flutter/material.dart';


final _icon=<String, IconData>{

'add_alert':Icons.add_alert,
'accessibility':Icons.accessibility,
'folder_open':Icons.folder_open,
'donut_large':Icons.donut_large,
'input':Icons.input,
'tune':Icons.list,
'drawers':Icons.featured_play_list,
'list':Icons.linear_scale,


};

Icon getIcon(String nombreIcono){
  return Icon(_icon[nombreIcono], color: Colors.grey);
}