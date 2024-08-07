import 'package:flutter/material.dart';
import 'package:flutter_application_3/controller/co.dart';
import 'package:flutter_application_3/model/model.dart';

class GetAdvice extends StatefulWidget {
  const GetAdvice({super.key});

  @override
  State<GetAdvice> createState() => _GetAdviceState();
}

class _GetAdviceState extends State<GetAdvice> {
  String advice = "";
  final AdviceController _controller = AdviceController();

  @override
  void initState() {
    super.initState();
    _fetchAdvice();
  }

  Future<void> _fetchAdvice() async {
    try {
      Advice fetchedAdvice = await _controller.fetchAdvice();
      setState(() {
        advice = fetchedAdvice.advice;
      });
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 250, 250),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 131, 116, 141),
        centerTitle: true,
        title: const Text(
          "API_Advice    ᓚᘏᗢ",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: advice.isNotEmpty
            ? Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  advice,
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 82, 9, 138)),
                  textAlign: TextAlign.center,
                ),
              )
            : const CircularProgressIndicator(
                color: Colors.amber,
              ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutter_application_3/controller/co.dart';

// class GetAdvice extends StatefulWidget {
//   const GetAdvice({super.key});

//   @override
//   State<GetAdvice> createState() => _GetAdviceState();
// }

// class _GetAdviceState extends State<GetAdvice> {
//   String advice = "";
//   final AdviceController _controller = AdviceController();

//   @override
//   void initState() {
//     super.initState();
//     _fetchAdvice();
//   }

//   Future<void> _fetchAdvice() async {
//     try {
//       String fetchedAdvice = await _controller.fetchAdvice();
//       setState(() {
//         advice = fetchedAdvice;
//       });
//     } catch (e) {}
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 251, 250, 250),
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 131, 116, 141),
//         centerTitle: true,
//         title: const Text(
//           "API_Advice    ᓚᘏᗢ",
//           style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: Center(
//         child: advice.isNotEmpty
//             ? Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Text(
//                   advice,
//                   style: const TextStyle(
//                       fontSize: 25,
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 82, 9, 138)),
//                   textAlign: TextAlign.center,
//                 ),
//               )
//             : const CircularProgressIndicator(
//                 color: Colors.amber,
//               ),
//       ),
//     );
//   }
// }
