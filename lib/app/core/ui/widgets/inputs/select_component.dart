// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:melina/app/core/extensions/custom_text_theme.dart';
import 'package:melina/app/core/ui/helpers/size_extensions.dart';
import 'package:melina/app/core/ui/styles/colors_app.dart';
import 'package:melina/app/core/ui/styles/icons.dart';

class SelectComponent extends StatefulWidget {
  TextEditingController textEditingController;
  List<dynamic> contentList;
  String title;
  String bottomSheetTitle;
  bool? isDisabled = false;
  String? Function(String?)? validator;

  SelectComponent({
    super.key,
    required this.textEditingController,
    required this.contentList,
    required this.title,
    required this.bottomSheetTitle,
    this.isDisabled,
    this.validator,
  });

  @override
  _SelectComponentState createState() => _SelectComponentState();
}

class _SelectComponentState extends State<SelectComponent> {
  showSelectModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 32, vertical: Platform.isIOS ? 24.0 : 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.bottomSheetTitle,
                    style: Theme.of(context).textTheme.title,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
          ),
          SliverList.builder(
            itemCount: widget.contentList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  setState(() {
                    widget.textEditingController.text =
                        widget.contentList[index].toString();
                  });
                  Navigator.of(context).pop();
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
                  alignment: Alignment.centerLeft,
                  width: context.screenWidth,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom:
                          BorderSide(width: 1, color: context.colors.gray50),
                    ),
                  ),
                  child: Text(
                    widget.contentList[index].toString(),
                    style: Theme.of(context).textTheme.content,
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: widget.isDisabled != null
          ? widget.isDisabled!
              ? 0.3
              : 1
          : 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: Theme.of(context).textTheme.content,
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            onTap: () =>
                widget.isDisabled == true ? () {} : showSelectModal(context),
            readOnly: true,
            controller: widget.textEditingController,
            validator: widget.validator,
            style: Theme.of(context).textTheme.content,
            decoration: InputDecoration(
              suffixIcon: Icon(
                context.icons.getIconByName('caretRight'),
                size: 24,
              ),
              hintText: 'Selecione',
              hintStyle: Theme.of(context).textTheme.inputHint,
            ),
          ),
        ],
      ),
    );
  }
}


// Opacity(
//       opacity: widget.isDisabled != null
//           ? widget.isDisabled!
//               ? 0.3
//               : 1
//           : 1,
//       child: SizedBox(
//         width: context.screenWidth,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               widget.title,
//               style: Theme.of(context).textTheme.content,
//             ),
//             const SizedBox(
//               height: 8,
//             ),
//             GestureDetector(
//                 onTap: () => widget.isDisabled == true
//                     ? () {}
//                     : showSelectModal(context),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(16),
//                     border: Border.all(
//                       color: context.colors.gray50,
//                       width: 2,
//                     ),
//                   ),
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       SizedBox(
//                         width: context.percentWidth(0.7),
//                         child: Text(
//                           widget.textEditingController.text.isEmpty
//                               ? 'Selecione'
//                               : widget.textEditingController.text,
//                           style: Theme.of(context).textTheme.bodyLarge,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                       ),
//                       Icon(
//                         context.icons.getIconByName('caretRight'),
//                         size: 24,
//                       )
//                     ],
//                   ),
//                 ))
//           ],
//         ),
//       ),
//     );