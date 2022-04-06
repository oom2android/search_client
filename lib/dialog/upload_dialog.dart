// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:markdown_widget/markdown_widget.dart';
// import 'package:search_client/config/config.dart';
// import 'package:search_client/utils/responsive.dart';

// class PushQuestionsDialog extends StatefulWidget {
//   final ValueChanged<String> onSubmit;
//   PushQuestionsDialog({Key? key, required this.onSubmit}) : super(key: key);

//   @override
//   State<PushQuestionsDialog> createState() => _PushQuestionsDialogState();
// }

// class _PushQuestionsDialogState extends State<PushQuestionsDialog> {
//   final TextEditingController _controllerTitle = TextEditingController();
//   final TextEditingController _controllerDesc = TextEditingController();
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final scale = Responsive.isDesktop(context) ? 2.5 : 1;
//     return Padding(
//       padding: const EdgeInsets.all(KSize.kDefaultPadding),
//       child: Material(
//         borderRadius: BorderRadius.circular(KSize.kDefaultPadding),
//         type: MaterialType.transparency,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               alignment: Alignment.center,
//               width: MediaQuery.of(context).size.width / scale,
//               color: KColor.kWhite,
//               height: KSize.kSearchBarHeight_,
//               child: const Text(
//                 KString.questions,
//                 style: TextStyle(
//                     fontSize: 18,
//                     color: KColor.kDarkBlackColor,
//                     fontWeight: FontWeight.bold),
//               ),
//             ),
//             Container(
//                 padding: const EdgeInsets.only(
//                     top: KSize.kDefaultPadding,
//                     left: KSize.kDefaultPadding * 2,
//                     right: KSize.kDefaultPadding * 2),
//                 width: MediaQuery.of(context).size.width / scale,
//                 color: KColor.kBgColor,
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         Expanded(
//                           child: _buildTextField(_controllerTitle,
//                               KString.one_questions_describe, 1),
//                         ),
//                         TextButton(
//                             onPressed: () {}, child: Text(KString.category))
//                       ],
//                     ),
//                     const SizedBox(
//                       height: KSize.kDefaultPadding,
//                     ),
//                     _buildTextField(
//                         _controllerDesc, KString.one_questions_des, 10,
//                         border: false),
//                     const SizedBox(
//                       height: KSize.kDefaultPadding,
//                     ),
//                     // buildMarkdown()
//                   ],
//                 )),
//             Container(
//               color: KColor.kWhite,
//               height: KSize.kSearchBarHeight_,
//               width: MediaQuery.of(context).size.width / scale,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Container(
//                     height: double.infinity,
//                     width: KSize.kAppBarHeight * 1.5,
//                     color: KColor.kPrimaryColor,
//                     child: TextButton(
//                         onPressed: () {
//                           widget.onSubmit(_controllerTitle.text);
//                         },
//                         child: const Text(
//                           KString.submit,
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: KColor.kWhite,
//                               fontSize: 14),
//                         )),
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildMarkdown() {
//     return Container(
//       width: double.infinity,
//       height: 200,
//       child: MarkdownWidget(
//         data: "## 开始",
//       ),
//     );
//   }

//   Widget _buildTextField(
//       TextEditingController controller, String hint, int maxLines,
//       {bool border = true}) {
//     return TextField(
//       controller: controller,
//       maxLines: maxLines,
//       style: const TextStyle(
//           color: KColor.kDarkBlackColor,
//           fontSize: 15,
//           fontWeight: FontWeight.bold),
//       decoration: InputDecoration(
//         hintText: hint,
//         focusedBorder: border
//             ? const OutlineInputBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(2)),
//                 borderSide: BorderSide(
//                   color: KColor.kPrimaryColor,
//                   width: 2.0,
//                 ),
//               )
//             : InputBorder.none,
//         enabledBorder: border
//             ? const OutlineInputBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(2)),
//                 borderSide: BorderSide(
//                   color: KColor.kPrimaryColor,
//                   width: 2.0,
//                 ),
//               )
//             : InputBorder.none,
//         fillColor: Colors.grey[50],
//         filled: true,
//         isCollapsed: true,
//         contentPadding: const EdgeInsets.symmetric(
//             horizontal: KSize.kDefaultPadding * 2,
//             vertical: KSize.kDefaultPadding * 1.5),
//       ),
//     );
//   }
// }
