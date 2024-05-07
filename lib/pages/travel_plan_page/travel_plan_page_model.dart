import '/flutter_flow/flutter_flow_util.dart';
import 'travel_plan_page_widget.dart' show TravelPlanPageWidget;
import 'package:flutter/material.dart';

class TravelPlanPageModel extends FlutterFlowModel<TravelPlanPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
