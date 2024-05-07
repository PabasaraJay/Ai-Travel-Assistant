import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'start_page_widget.dart' show StartPageWidget;
import 'package:flutter/material.dart';

class StartPageModel extends FlutterFlowModel<StartPageWidget> {
  ///  Local state fields for this page.

  bool? lightMode;

  String travelPrompt = 'travelPrompt';

  String travelPlan = 'travelPlan';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for Destination widget.
  FocusNode? destinationFocusNode;
  TextEditingController? destinationTextController;
  String? Function(BuildContext, String?)? destinationTextControllerValidator;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay1;
  // State field(s) for StartDay widget.
  FocusNode? startDayFocusNode;
  TextEditingController? startDayTextController;
  String? Function(BuildContext, String?)? startDayTextControllerValidator;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay2;
  // State field(s) for EndDate widget.
  FocusNode? endDateFocusNode;
  TextEditingController? endDateTextController;
  String? Function(BuildContext, String?)? endDateTextControllerValidator;
  // State field(s) for Budget widget.
  FocusNode? budgetFocusNode;
  TextEditingController? budgetTextController;
  String? Function(BuildContext, String?)? budgetTextControllerValidator;
  // State field(s) for interests widget.
  FormFieldController<List<String>>? interestsValueController;
  List<String>? get interestsValues => interestsValueController?.value;
  set interestsValues(List<String>? val) =>
      interestsValueController?.value = val;
  // Stores action output result for [Backend Call - API (Send Full Prompt)] action in Button widget.
  ApiCallResponse? chatResponse;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay1 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    calendarSelectedDay2 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    destinationFocusNode?.dispose();
    destinationTextController?.dispose();

    startDayFocusNode?.dispose();
    startDayTextController?.dispose();

    endDateFocusNode?.dispose();
    endDateTextController?.dispose();

    budgetFocusNode?.dispose();
    budgetTextController?.dispose();
  }
}
