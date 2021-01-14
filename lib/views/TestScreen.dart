import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(8.0),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                                "slkfjs slkj lslkjjf lksjjsljs jdljsdfkj sflsjkldjfkd kldjflksj sldjflkj dslkfjksdljfkld jkfljdlfjslkjl jskljfkldjflkjdlkfjkl sjf djkf jskljfldjfl dfdklfjdkl jfksljfkdjklj fkdsj  jfdj lkf "
                            ),
                            Text(
                                "slkfjs slkj lslkjjf lksjjsljs jdljsdfkj sflsjkldjfkd kldjflksj sldjflkj dslkfjksdljfkld jkfljdlfjslkjl jskljfkldjflkjdlkfjkl sjf djkf jskljfldjfl dfdklfjdkl jfksljfkdjklj fkdsj  jfdj lkf "
                            ),
                          ],
                        ),
                      )
                  ),
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                                "slkfjs slkj lslkjjf lksjjsljs jdljsdfkj sflsjkldjfkd kldjflksj sldjflkj dslkfjksdljfkld jkfljdlfjslkjl jskljfkldjflkjdlkfjkl sjf djkf jskljfldjfl dfdklfjdkl jfksljfkdjklj fkdsj  jfdj lkf "
                            ),

                          ],
                        ),
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}