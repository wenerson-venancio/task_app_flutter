import 'package:flutter/material.dart';
import 'package:task_app/models/task.dart';
import 'package:task_app/screens/detail/widgets/date_picker.dart';
import 'package:task_app/screens/detail/widgets/task_title.dart';

import 'widgets/task_timeline.dart';

class DetailPage extends StatelessWidget {
  final Task task;
   const DetailPage(this.task, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final detialList = task.desc;
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          _buildAppBar(context),
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [DatePicker(), TaskTitle()],
              ),
            ),
          ),
          detialList == null
              ? SliverFillRemaining(
                  child: Container(
                      color: Colors.white,
                      child: const Center(
                          child: Text(
                        'No Task today',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ))),
                ): 
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                      (_, index) => TaskTimeline(detialList[index]),
                      childCount: detialList.length
                  ),
        
                )
        ],
      ),
    );
  }

  _buildAppBar(context) {
    return SliverAppBar(
      expandedHeight: 90,
      backgroundColor: Colors.black,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: const Icon(Icons.arrow_back_ios),
        iconSize: 20,
      ),
      actions: const [Icon(Icons.more_vert)],
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${task.title} tasks',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'You have ${task.left} tasks for today',
              style: TextStyle(fontSize: 12, color: Colors.grey[700]),
            )
          ],
        ),
      ),
    );
  }
}
