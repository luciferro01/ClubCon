
// import 'package:flutter/material.dart';

// class DashboardView extends StatelessWidget {
//   const DashboardView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: Container(
//         width: 377,
//         height: 1789,
//         decoration: BoxDecoration(
//           color: const Color(0xfff7f3f2),
//           borderRadius: BorderRadius.circular(40),
//         ),
//         child: Stack(
//           children: [
//             Positioned(
//               left: 16,
//               top: 302,
//               bottom: 131,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     width: 343,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       mainAxisSize: MainAxisSize.min,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         SizedBox(
//                           width: 343,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               const Text(
//                                 'Upcoming Events',
//                                 textAlign: TextAlign.left,
//                                 style: TextStyle(
//                                     decoration: TextDecoration.none,
//                                     fontSize: 18,
//                                     color: Color(0xff4b3425),
//                                     fontWeight: FontWeight.normal),
//                                 maxLines: 9999,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                               const SizedBox(width: 131),
//                               Image.asset(
//                                 'images/image_I319564338522866.png',
//                                 width: 24,
//                                 height: 24,
//                               ),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(height: 12),
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           mainAxisSize: MainAxisSize.min,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               mainAxisSize: MainAxisSize.min,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   width: 159,
//                                   height: 200,
//                                   decoration: BoxDecoration(
//                                     color: const Color(0xff9bb068),
//                                     borderRadius: BorderRadius.circular(32),
//                                     boxShadow: const [
//                                       BoxShadow(
//                                           color: const Color(0x269bb068),
//                                           offset: Offset(0, 16),
//                                           blurRadius: 32),
//                                     ],
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(16),
//                                     child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Expanded(
//                                           child: Container(
//                                             width: double.infinity,
//                                             child: Column(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.start,
//                                               mainAxisSize: MainAxisSize.min,
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: [
//                                                 Row(
//                                                   children: [
//                                                     Expanded(
//                                                       child: Container(
//                                                         child: Row(
//                                                           mainAxisAlignment:
//                                                               MainAxisAlignment
//                                                                   .start,
//                                                           mainAxisSize:
//                                                               MainAxisSize.max,
//                                                           crossAxisAlignment:
//                                                               CrossAxisAlignment
//                                                                   .center,
//                                                           children: [
//                                                             Image.asset(
//                                                               'images/image_I31956434163341730.png',
//                                                               width: 24,
//                                                               height: 24,
//                                                             ),
//                                                             const SizedBox(
//                                                                 width: 8),
//                                                             Expanded(
//                                                               child: Container(
//                                                                 width: double
//                                                                     .infinity,
//                                                                 child:
//                                                                     const Text(
//                                                                   'Event Name',
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .left,
//                                                                   style: TextStyle(
//                                                                       decoration:
//                                                                           TextDecoration
//                                                                               .none,
//                                                                       fontSize:
//                                                                           16,
//                                                                       color: Color(
//                                                                           0xffffffff),
//                                                                       fontWeight:
//                                                                           FontWeight
//                                                                               .normal),
//                                                                   maxLines:
//                                                                       9999,
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                                 const SizedBox(width: 8),
//                                 Container(
//                                   width: 164,
//                                   height: 200,
//                                   decoration: BoxDecoration(
//                                     color: const Color(0xfffe804b),
//                                     borderRadius: BorderRadius.circular(32),
//                                     boxShadow: const [
//                                       BoxShadow(
//                                           color: const Color(0x26fe814b),
//                                           offset: Offset(0, 16),
//                                           blurRadius: 32),
//                                     ],
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(16),
//                                     child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Expanded(
//                                           child: Container(
//                                             width: double.infinity,
//                                             child: Column(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.start,
//                                               mainAxisSize: MainAxisSize.min,
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: [
//                                                 Row(
//                                                   children: [
//                                                     Expanded(
//                                                       child: Container(
//                                                         child: Column(
//                                                           mainAxisAlignment:
//                                                               MainAxisAlignment
//                                                                   .start,
//                                                           mainAxisSize:
//                                                               MainAxisSize.min,
//                                                           crossAxisAlignment:
//                                                               CrossAxisAlignment
//                                                                   .start,
//                                                           children: [
//                                                             Row(
//                                                               mainAxisAlignment:
//                                                                   MainAxisAlignment
//                                                                       .start,
//                                                               mainAxisSize:
//                                                                   MainAxisSize
//                                                                       .min,
//                                                               crossAxisAlignment:
//                                                                   CrossAxisAlignment
//                                                                       .center,
//                                                               children: [
//                                                                 Image.asset(
//                                                                   'images/image_I31956434263341809.png',
//                                                                   width: 24,
//                                                                   height: 24,
//                                                                 ),
//                                                                 const SizedBox(
//                                                                     width: 8),
//                                                                 const Text(
//                                                                   'Event Name',
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .left,
//                                                                   style: TextStyle(
//                                                                       decoration:
//                                                                           TextDecoration
//                                                                               .none,
//                                                                       fontSize:
//                                                                           16,
//                                                                       color: Color(
//                                                                           0xffffffff),
//                                                                       fontWeight:
//                                                                           FontWeight
//                                                                               .normal),
//                                                                   maxLines:
//                                                                       9999,
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                 ),
//                                                               ],
//                                                             ),
//                                                             const SizedBox(
//                                                                 height: 8),
//                                                             Row(
//                                                               children: [
//                                                                 Expanded(
//                                                                   child:
//                                                                       Container(
//                                                                     child:
//                                                                         const Text(
//                                                                       'Short Description',
//                                                                       textAlign:
//                                                                           TextAlign
//                                                                               .left,
//                                                                       style: TextStyle(
//                                                                           decoration: TextDecoration
//                                                                               .none,
//                                                                           fontSize:
//                                                                               24,
//                                                                           color: Color(
//                                                                               0xfff2f4ea),
//                                                                           fontWeight:
//                                                                               FontWeight.normal),
//                                                                       maxLines:
//                                                                           9999,
//                                                                       overflow:
//                                                                           TextOverflow
//                                                                               .ellipsis,
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ],
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                                 const SizedBox(width: 8),
//                                 Container(
//                                   decoration: BoxDecoration(
//                                     color: const Color(0xffa18eff),
//                                     borderRadius: BorderRadius.circular(32),
//                                     boxShadow: const [
//                                       BoxShadow(
//                                           color: const Color(0x26a18fff),
//                                           offset: Offset(0, 16),
//                                           blurRadius: 32),
//                                     ],
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(16),
//                                     child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       mainAxisSize: MainAxisSize.min,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Column(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.start,
//                                           mainAxisSize: MainAxisSize.min,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Column(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.start,
//                                               mainAxisSize: MainAxisSize.min,
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: [
//                                                 Row(
//                                                   mainAxisAlignment:
//                                                       MainAxisAlignment.start,
//                                                   mainAxisSize:
//                                                       MainAxisSize.min,
//                                                   crossAxisAlignment:
//                                                       CrossAxisAlignment.center,
//                                                   children: [
//                                                     Image.asset(
//                                                       'images/image_I3195643436419494.png',
//                                                       width: 24,
//                                                       height: 24,
//                                                     ),
//                                                     const SizedBox(width: 8),
//                                                     const Text(
//                                                       'Health Journal',
//                                                       textAlign: TextAlign.left,
//                                                       style: TextStyle(
//                                                           decoration:
//                                                               TextDecoration
//                                                                   .none,
//                                                           fontSize: 14,
//                                                           color:
//                                                               Color(0xffffffff),
//                                                           fontWeight: FontWeight
//                                                               .normal),
//                                                       maxLines: 9999,
//                                                       overflow:
//                                                           TextOverflow.ellipsis,
//                                                     ),
//                                                   ],
//                                                 ),
//                                                 const SizedBox(height: 8),
//                                                 const Text(
//                                                   '31/365',
//                                                   textAlign: TextAlign.left,
//                                                   style: TextStyle(
//                                                       decoration:
//                                                           TextDecoration.none,
//                                                       fontSize: 24,
//                                                       color: Color(0xfff2f4ea),
//                                                       fontWeight:
//                                                           FontWeight.normal),
//                                                   maxLines: 9999,
//                                                   overflow:
//                                                       TextOverflow.ellipsis,
//                                                 ),
//                                               ],
//                                             ),
//                                             const SizedBox(height: 6),
//                                             Image.asset(
//                                               'images/image_I31956434369221877.png',
//                                               width: 131,
//                                               height: 101,
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(height: 24),
//                             Image.asset(
//                               'images/image_319564344.png',
//                               width: 344,
//                               height: 8,
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 32),
//                   SizedBox(
//                     width: 343,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       mainAxisSize: MainAxisSize.min,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         SizedBox(
//                           width: 343,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               const Text(
//                                 'Past Events',
//                                 textAlign: TextAlign.left,
//                                 style: TextStyle(
//                                     decoration: TextDecoration.none,
//                                     fontSize: 18,
//                                     color: Color(0xff4b3425),
//                                     fontWeight: FontWeight.normal),
//                                 maxLines: 9999,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                               const SizedBox(width: 131),
//                               Image.asset(
//                                 'images/image_I319055889522866.png',
//                                 width: 24,
//                                 height: 24,
//                               ),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(height: 12),
//                         Row(
//                           children: [
//                             Expanded(
//                               child: Container(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   mainAxisSize: MainAxisSize.min,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Expanded(
//                                           child: Container(
//                                             child: Row(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.start,
//                                               mainAxisSize: MainAxisSize.min,
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: [
//                                                 Expanded(
//                                                   child: Container(
//                                                     width: double.infinity,
//                                                     decoration: BoxDecoration(
//                                                       color: const Color(
//                                                           0xff9bb068),
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               32),
//                                                       boxShadow: const [
//                                                         BoxShadow(
//                                                             color: const Color(
//                                                                 0x269bb068),
//                                                             offset:
//                                                                 Offset(0, 16),
//                                                             blurRadius: 32),
//                                                       ],
//                                                     ),
//                                                     child: Padding(
//                                                       padding:
//                                                           const EdgeInsets.all(
//                                                               16),
//                                                       child: Row(
//                                                         mainAxisAlignment:
//                                                             MainAxisAlignment
//                                                                 .start,
//                                                         mainAxisSize:
//                                                             MainAxisSize.min,
//                                                         crossAxisAlignment:
//                                                             CrossAxisAlignment
//                                                                 .start,
//                                                         children: [
//                                                           Expanded(
//                                                             child: Container(
//                                                               width: double
//                                                                   .infinity,
//                                                               child: Column(
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .start,
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .min,
//                                                                 crossAxisAlignment:
//                                                                     CrossAxisAlignment
//                                                                         .start,
//                                                                 children: [
//                                                                   Row(
//                                                                     children: [
//                                                                       Expanded(
//                                                                         child:
//                                                                             Container(
//                                                                           child:
//                                                                               Row(
//                                                                             mainAxisAlignment:
//                                                                                 MainAxisAlignment.start,
//                                                                             mainAxisSize:
//                                                                                 MainAxisSize.max,
//                                                                             crossAxisAlignment:
//                                                                                 CrossAxisAlignment.center,
//                                                                             children: [
//                                                                               Image.asset(
//                                                                                 'images/image_I31905589263341730.png',
//                                                                                 width: 24,
//                                                                                 height: 24,
//                                                                               ),
//                                                                               const SizedBox(width: 8),
//                                                                               Expanded(
//                                                                                 child: Container(
//                                                                                   width: double.infinity,
//                                                                                   child: const Text(
//                                                                                     'Event Name',
//                                                                                     textAlign: TextAlign.left,
//                                                                                     style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: Color(0xffffffff), fontWeight: FontWeight.normal),
//                                                                                     maxLines: 9999,
//                                                                                     overflow: TextOverflow.ellipsis,
//                                                                                   ),
//                                                                                 ),
//                                                                               ),
//                                                                             ],
//                                                                           ),
//                                                                         ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                   const SizedBox(
//                                                                       height:
//                                                                           24),
//                                                                   SizedBox(
//                                                                     width: 131,
//                                                                     height: 120,
//                                                                     child:
//                                                                         Stack(
//                                                                       children: [
//                                                                         Positioned(
//                                                                           left:
//                                                                               5,
//                                                                           width:
//                                                                               120,
//                                                                           top:
//                                                                               0,
//                                                                           height:
//                                                                               120,
//                                                                           child:
//                                                                               Image.asset(
//                                                                             'images/image_I31905589263341728.png',
//                                                                             width:
//                                                                                 120,
//                                                                             height:
//                                                                                 120,
//                                                                           ),
//                                                                         ),
//                                                                         const Positioned(
//                                                                           left:
//                                                                               41,
//                                                                           top:
//                                                                               37,
//                                                                           child:
//                                                                               Column(
//                                                                             mainAxisAlignment:
//                                                                                 MainAxisAlignment.start,
//                                                                             mainAxisSize:
//                                                                                 MainAxisSize.min,
//                                                                             crossAxisAlignment:
//                                                                                 CrossAxisAlignment.center,
//                                                                             children: [
//                                                                               Text(
//                                                                                 '80',
//                                                                                 textAlign: TextAlign.center,
//                                                                                 style: TextStyle(decoration: TextDecoration.none, fontSize: 24, color: Color(0xfff2f4ea), fontWeight: FontWeight.normal),
//                                                                                 maxLines: 9999,
//                                                                                 overflow: TextOverflow.ellipsis,
//                                                                               ),
//                                                                               Text(
//                                                                                 'Healthy',
//                                                                                 textAlign: TextAlign.center,
//                                                                                 style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: Color(0xffe5ead6), fontWeight: FontWeight.normal),
//                                                                                 maxLines: 9999,
//                                                                                 overflow: TextOverflow.ellipsis,
//                                                                               ),
//                                                                             ],
//                                                                           ),
//                                                                         ),
//                                                                       ],
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 const SizedBox(width: 8),
//                                                 Container(
//                                                   width: 159,
//                                                   height: 200,
//                                                   decoration: BoxDecoration(
//                                                     color:
//                                                         const Color(0xfffe804b),
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             32),
//                                                     boxShadow: const [
//                                                       BoxShadow(
//                                                           color: const Color(
//                                                               0x26fe814b),
//                                                           offset: Offset(0, 16),
//                                                           blurRadius: 32),
//                                                     ],
//                                                   ),
//                                                   child: Padding(
//                                                     padding:
//                                                         const EdgeInsets.all(
//                                                             16),
//                                                     child: Row(
//                                                       mainAxisAlignment:
//                                                           MainAxisAlignment
//                                                               .start,
//                                                       crossAxisAlignment:
//                                                           CrossAxisAlignment
//                                                               .start,
//                                                       children: [
//                                                         Expanded(
//                                                           child: Container(
//                                                             width:
//                                                                 double.infinity,
//                                                             child: Column(
//                                                               mainAxisAlignment:
//                                                                   MainAxisAlignment
//                                                                       .start,
//                                                               mainAxisSize:
//                                                                   MainAxisSize
//                                                                       .min,
//                                                               crossAxisAlignment:
//                                                                   CrossAxisAlignment
//                                                                       .start,
//                                                               children: [
//                                                                 Row(
//                                                                   children: [
//                                                                     Expanded(
//                                                                       child:
//                                                                           Container(
//                                                                         child:
//                                                                             Column(
//                                                                           mainAxisAlignment:
//                                                                               MainAxisAlignment.start,
//                                                                           mainAxisSize:
//                                                                               MainAxisSize.min,
//                                                                           crossAxisAlignment:
//                                                                               CrossAxisAlignment.start,
//                                                                           children: [
//                                                                             Row(
//                                                                               mainAxisAlignment: MainAxisAlignment.start,
//                                                                               mainAxisSize: MainAxisSize.min,
//                                                                               crossAxisAlignment: CrossAxisAlignment.center,
//                                                                               children: [
//                                                                                 Image.asset(
//                                                                                   'images/image_I31905589363341809.png',
//                                                                                   width: 24,
//                                                                                   height: 24,
//                                                                                 ),
//                                                                                 const SizedBox(width: 8),
//                                                                                 const Text(
//                                                                                   'Event Name',
//                                                                                   textAlign: TextAlign.left,
//                                                                                   style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: Color(0xffffffff), fontWeight: FontWeight.normal),
//                                                                                   maxLines: 9999,
//                                                                                   overflow: TextOverflow.ellipsis,
//                                                                                 ),
//                                                                               ],
//                                                                             ),
//                                                                             const SizedBox(height: 8),
//                                                                             Row(
//                                                                               children: [
//                                                                                 Expanded(
//                                                                                   child: Container(
//                                                                                     child: const Text(
//                                                                                       'Sad',
//                                                                                       textAlign: TextAlign.left,
//                                                                                       style: TextStyle(decoration: TextDecoration.none, fontSize: 24, color: Color(0xfff2f4ea), fontWeight: FontWeight.normal),
//                                                                                       maxLines: 9999,
//                                                                                       overflow: TextOverflow.ellipsis,
//                                                                                     ),
//                                                                                   ),
//                                                                                 ),
//                                                                               ],
//                                                                             ),
//                                                                           ],
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                   ],
//                                                                 ),
//                                                               ],
//                                                             ),
//                                                           ),
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 const SizedBox(width: 8),
//                                                 Container(
//                                                   decoration: BoxDecoration(
//                                                     color:
//                                                         const Color(0xffa18eff),
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             32),
//                                                     boxShadow: const [
//                                                       BoxShadow(
//                                                           color: const Color(
//                                                               0x26a18fff),
//                                                           offset: Offset(0, 16),
//                                                           blurRadius: 32),
//                                                     ],
//                                                   ),
//                                                   child: Padding(
//                                                     padding:
//                                                         const EdgeInsets.all(
//                                                             16),
//                                                     child: Row(
//                                                       mainAxisAlignment:
//                                                           MainAxisAlignment
//                                                               .start,
//                                                       mainAxisSize:
//                                                           MainAxisSize.min,
//                                                       crossAxisAlignment:
//                                                           CrossAxisAlignment
//                                                               .start,
//                                                       children: [
//                                                         Column(
//                                                           mainAxisAlignment:
//                                                               MainAxisAlignment
//                                                                   .start,
//                                                           mainAxisSize:
//                                                               MainAxisSize.min,
//                                                           crossAxisAlignment:
//                                                               CrossAxisAlignment
//                                                                   .start,
//                                                           children: [
//                                                             Column(
//                                                               mainAxisAlignment:
//                                                                   MainAxisAlignment
//                                                                       .start,
//                                                               mainAxisSize:
//                                                                   MainAxisSize
//                                                                       .min,
//                                                               crossAxisAlignment:
//                                                                   CrossAxisAlignment
//                                                                       .start,
//                                                               children: [
//                                                                 Row(
//                                                                   mainAxisAlignment:
//                                                                       MainAxisAlignment
//                                                                           .start,
//                                                                   mainAxisSize:
//                                                                       MainAxisSize
//                                                                           .min,
//                                                                   crossAxisAlignment:
//                                                                       CrossAxisAlignment
//                                                                           .center,
//                                                                   children: [
//                                                                     Image.asset(
//                                                                       'images/image_I3190558946419494.png',
//                                                                       width: 24,
//                                                                       height:
//                                                                           24,
//                                                                     ),
//                                                                     const SizedBox(
//                                                                         width:
//                                                                             8),
//                                                                     const Text(
//                                                                       'Health Journal',
//                                                                       textAlign:
//                                                                           TextAlign
//                                                                               .left,
//                                                                       style: TextStyle(
//                                                                           decoration: TextDecoration
//                                                                               .none,
//                                                                           fontSize:
//                                                                               14,
//                                                                           color: Color(
//                                                                               0xffffffff),
//                                                                           fontWeight:
//                                                                               FontWeight.normal),
//                                                                       maxLines:
//                                                                           9999,
//                                                                       overflow:
//                                                                           TextOverflow
//                                                                               .ellipsis,
//                                                                     ),
//                                                                   ],
//                                                                 ),
//                                                                 const SizedBox(
//                                                                     height: 8),
//                                                                 const Text(
//                                                                   '31/365',
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .left,
//                                                                   style: TextStyle(
//                                                                       decoration:
//                                                                           TextDecoration
//                                                                               .none,
//                                                                       fontSize:
//                                                                           24,
//                                                                       color: Color(
//                                                                           0xfff2f4ea),
//                                                                       fontWeight:
//                                                                           FontWeight
//                                                                               .normal),
//                                                                   maxLines:
//                                                                       9999,
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                 ),
//                                                               ],
//                                                             ),
//                                                             const SizedBox(
//                                                                 height: 6),
//                                                             Image.asset(
//                                                               'images/image_I31905589469221877.png',
//                                                               width: 131,
//                                                               height: 101,
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     const SizedBox(height: 24),
//                                     Image.asset(
//                                       'images/image_319055895.png',
//                                       width: 344,
//                                       height: 8,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 32),
//                   Expanded(
//                     child: Container(
//                       height: double.infinity,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         mainAxisSize: MainAxisSize.min,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(
//                             width: 343,
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 const Text(
//                                   'Activity Tracker',
//                                   textAlign: TextAlign.left,
//                                   style: TextStyle(
//                                       decoration: TextDecoration.none,
//                                       fontSize: 18,
//                                       color: Color(0xff4b3425),
//                                       fontWeight: FontWeight.normal),
//                                   maxLines: 9999,
//                                   overflow: TextOverflow.ellipsis,
//                                 ),
//                                 const SizedBox(width: 131),
//                                 Image.asset(
//                                   'images/image_I319055903522866.png',
//                                   width: 24,
//                                   height: 24,
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const SizedBox(height: 12),
//                           Expanded(
//                             child: Container(
//                               height: double.infinity,
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 mainAxisSize: MainAxisSize.min,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Container(
//                                     width: 343,
//                                     decoration: BoxDecoration(
//                                       color: const Color(0xffffffff),
//                                       borderRadius: BorderRadius.circular(32),
//                                       boxShadow: const [
//                                         BoxShadow(
//                                             color: const Color(0x0c4b3425),
//                                             offset: Offset(0, 8),
//                                             blurRadius: 16),
//                                       ],
//                                     ),
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(16),
//                                       child: Column(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.start,
//                                         mainAxisSize: MainAxisSize.min,
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Row(
//                                             children: [
//                                               Expanded(
//                                                 child: Container(
//                                                   child: Row(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment
//                                                             .spaceBetween,
//                                                     mainAxisSize:
//                                                         MainAxisSize.max,
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .center,
//                                                     children: [
//                                                       SizedBox(
//                                                         width: 238.5,
//                                                         child: Row(
//                                                           mainAxisAlignment:
//                                                               MainAxisAlignment
//                                                                   .start,
//                                                           crossAxisAlignment:
//                                                               CrossAxisAlignment
//                                                                   .center,
//                                                           children: [
//                                                             Image.asset(
//                                                               'images/image_I3190559056345430.png',
//                                                               width: 64,
//                                                               height: 64,
//                                                             ),
//                                                             const SizedBox(
//                                                                 width: 12),
//                                                             const Column(
//                                                               mainAxisAlignment:
//                                                                   MainAxisAlignment
//                                                                       .start,
//                                                               mainAxisSize:
//                                                                   MainAxisSize
//                                                                       .min,
//                                                               crossAxisAlignment:
//                                                                   CrossAxisAlignment
//                                                                       .start,
//                                                               children: [
//                                                                 Text(
//                                                                   'Meeting Hours',
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .left,
//                                                                   style: TextStyle(
//                                                                       decoration:
//                                                                           TextDecoration
//                                                                               .none,
//                                                                       fontSize:
//                                                                           18,
//                                                                       color: Color(
//                                                                           0xff4b3425),
//                                                                       fontWeight:
//                                                                           FontWeight
//                                                                               .normal),
//                                                                   maxLines:
//                                                                       9999,
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                 ),
//                                                                 SizedBox(
//                                                                     height: 8),
//                                                                 Text(
//                                                                   '25h',
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .left,
//                                                                   style: TextStyle(
//                                                                       decoration:
//                                                                           TextDecoration
//                                                                               .none,
//                                                                       fontSize:
//                                                                           14,
//                                                                       color: Color(
//                                                                           0xa31f160f),
//                                                                       fontWeight:
//                                                                           FontWeight
//                                                                               .normal),
//                                                                   maxLines:
//                                                                       9999,
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                 ),
//                                                               ],
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                       const SizedBox(width: 12),
//                                                       Image.asset(
//                                                         'images/image_I3190559056348592.png',
//                                                         width: 64,
//                                                         height: 64,
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                   const SizedBox(height: 8),
//                                   Container(
//                                     width: 343,
//                                     decoration: BoxDecoration(
//                                       color: const Color(0xffffffff),
//                                       borderRadius: BorderRadius.circular(32),
//                                       boxShadow: const [
//                                         BoxShadow(
//                                             color: const Color(0x0c4b3425),
//                                             offset: Offset(0, 8),
//                                             blurRadius: 16),
//                                       ],
//                                     ),
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(16),
//                                       child: Column(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.start,
//                                         mainAxisSize: MainAxisSize.min,
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Row(
//                                             children: [
//                                               Expanded(
//                                                 child: Container(
//                                                   child: Row(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment
//                                                             .spaceBetween,
//                                                     mainAxisSize:
//                                                         MainAxisSize.max,
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .center,
//                                                     children: [
//                                                       SizedBox(
//                                                         width: 238.5,
//                                                         child: Row(
//                                                           mainAxisAlignment:
//                                                               MainAxisAlignment
//                                                                   .start,
//                                                           crossAxisAlignment:
//                                                               CrossAxisAlignment
//                                                                   .center,
//                                                           children: [
//                                                             Image.asset(
//                                                               'images/image_I3190559066348565.png',
//                                                               width: 64,
//                                                               height: 64,
//                                                             ),
//                                                             const SizedBox(
//                                                                 width: 12),
//                                                             const Column(
//                                                               mainAxisAlignment:
//                                                                   MainAxisAlignment
//                                                                       .start,
//                                                               mainAxisSize:
//                                                                   MainAxisSize
//                                                                       .min,
//                                                               crossAxisAlignment:
//                                                                   CrossAxisAlignment
//                                                                       .start,
//                                                               children: [
//                                                                 Text(
//                                                                   'Participation Rate',
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .left,
//                                                                   style: TextStyle(
//                                                                       decoration:
//                                                                           TextDecoration
//                                                                               .none,
//                                                                       fontSize:
//                                                                           18,
//                                                                       color: Color(
//                                                                           0xff4b3425),
//                                                                       fontWeight:
//                                                                           FontWeight
//                                                                               .normal),
//                                                                   maxLines:
//                                                                       9999,
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                 ),
//                                                                 SizedBox(
//                                                                     height: 8),
//                                                                 Text(
//                                                                   'Very Low (~1 out of 5 Avg)',
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .left,
//                                                                   style: TextStyle(
//                                                                       decoration:
//                                                                           TextDecoration
//                                                                               .none,
//                                                                       fontSize:
//                                                                           14,
//                                                                       color: Color(
//                                                                           0xa31f160f),
//                                                                       fontWeight:
//                                                                           FontWeight
//                                                                               .normal),
//                                                                   maxLines:
//                                                                       9999,
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                 ),
//                                                               ],
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                       const SizedBox(width: 12),
//                                                       SizedBox(
//                                                         width: 64,
//                                                         height: 64,
//                                                         child: Stack(
//                                                           children: [
//                                                             Positioned(
//                                                               left: 4,
//                                                               width: 56,
//                                                               top: 4,
//                                                               height: 56,
//                                                               child:
//                                                                   Image.asset(
//                                                                 'images/image1_I3190559066348559.png',
//                                                                 width: 56,
//                                                                 height: 56,
//                                                               ),
//                                                             ),
//                                                             Positioned(
//                                                               left: 4,
//                                                               width: 56,
//                                                               top: 4,
//                                                               height: 56,
//                                                               child:
//                                                                   Image.asset(
//                                                                 'images/image2_I3190559066348578.png',
//                                                                 width: 56,
//                                                                 height: 56,
//                                                               ),
//                                                             ),
//                                                             const Positioned(
//                                                               left: 29,
//                                                               top: 25,
//                                                               child: Text(
//                                                                 '1',
//                                                                 textAlign:
//                                                                     TextAlign
//                                                                         .center,
//                                                                 style: TextStyle(
//                                                                     decoration:
//                                                                         TextDecoration
//                                                                             .none,
//                                                                     fontSize:
//                                                                         12,
//                                                                     color: Color(
//                                                                         0xff4b3425),
//                                                                     fontWeight:
//                                                                         FontWeight
//                                                                             .normal),
//                                                                 maxLines: 9999,
//                                                                 overflow:
//                                                                     TextOverflow
//                                                                         .ellipsis,
//                                                               ),
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                   const SizedBox(height: 8),
//                                   Container(
//                                     width: 343,
//                                     decoration: BoxDecoration(
//                                       color: const Color(0xffffffff),
//                                       borderRadius: BorderRadius.circular(32),
//                                       boxShadow: const [
//                                         BoxShadow(
//                                             color: const Color(0x0c4b3425),
//                                             offset: Offset(0, 8),
//                                             blurRadius: 16),
//                                       ],
//                                     ),
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(16),
//                                       child: Column(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.start,
//                                         mainAxisSize: MainAxisSize.min,
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Row(
//                                             children: [
//                                               Expanded(
//                                                 child: Container(
//                                                   child: Row(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment
//                                                             .spaceBetween,
//                                                     mainAxisSize:
//                                                         MainAxisSize.max,
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .center,
//                                                     children: [
//                                                       SizedBox(
//                                                         width: 238.5,
//                                                         child: Row(
//                                                           mainAxisAlignment:
//                                                               MainAxisAlignment
//                                                                   .start,
//                                                           crossAxisAlignment:
//                                                               CrossAxisAlignment
//                                                                   .center,
//                                                           children: [
//                                                             Image.asset(
//                                                               'images/image_I3190559076348582.png',
//                                                               width: 64,
//                                                               height: 64,
//                                                             ),
//                                                             const SizedBox(
//                                                                 width: 12),
//                                                             const Column(
//                                                               mainAxisAlignment:
//                                                                   MainAxisAlignment
//                                                                       .start,
//                                                               mainAxisSize:
//                                                                   MainAxisSize
//                                                                       .min,
//                                                               crossAxisAlignment:
//                                                                   CrossAxisAlignment
//                                                                       .start,
//                                                               children: [
//                                                                 Text(
//                                                                   'Attendance Journal',
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .left,
//                                                                   style: TextStyle(
//                                                                       decoration:
//                                                                           TextDecoration
//                                                                               .none,
//                                                                       fontSize:
//                                                                           18,
//                                                                       color: Color(
//                                                                           0xff4b3425),
//                                                                       fontWeight:
//                                                                           FontWeight
//                                                                               .normal),
//                                                                   maxLines:
//                                                                       9999,
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                 ),
//                                                                 SizedBox(
//                                                                     height: 8),
//                                                                 Text(
//                                                                   '6 Day Streak',
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .left,
//                                                                   style: TextStyle(
//                                                                       decoration:
//                                                                           TextDecoration
//                                                                               .none,
//                                                                       fontSize:
//                                                                           14,
//                                                                       color: Color(
//                                                                           0xa31f160f),
//                                                                       fontWeight:
//                                                                           FontWeight
//                                                                               .normal),
//                                                                   maxLines:
//                                                                       9999,
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                 ),
//                                                               ],
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                       const SizedBox(width: 12),
//                                                       Image.asset(
//                                                         'images/image_I3190559076348587.png',
//                                                         width: 64,
//                                                         height: 64,
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                   const SizedBox(height: 8),
//                                   Expanded(
//                                     child: Container(
//                                       width: 343,
//                                       height: double.infinity,
//                                       decoration: BoxDecoration(
//                                         color: const Color(0xffffffff),
//                                         borderRadius: BorderRadius.circular(32),
//                                         boxShadow: const [
//                                           BoxShadow(
//                                               color: const Color(0x0c4b3425),
//                                               offset: Offset(0, 8),
//                                               blurRadius: 16),
//                                         ],
//                                       ),
//                                       child: Padding(
//                                         padding: const EdgeInsets.all(16),
//                                         child: Column(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.start,
//                                           mainAxisSize: MainAxisSize.min,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Expanded(
//                                               child: Container(
//                                                 width: 311,
//                                                 height: double.infinity,
//                                                 child: Row(
//                                                   mainAxisAlignment:
//                                                       MainAxisAlignment.start,
//                                                   crossAxisAlignment:
//                                                       CrossAxisAlignment.center,
//                                                   children: [
//                                                     Image.asset(
//                                                       'images/image_I3190559086348642.png',
//                                                       width: 64,
//                                                       height: 64,
//                                                     ),
//                                                     const SizedBox(width: 12),
//                                                     Expanded(
//                                                       child: Container(
//                                                         width: double.infinity,
//                                                         child: Column(
//                                                           mainAxisAlignment:
//                                                               MainAxisAlignment
//                                                                   .start,
//                                                           mainAxisSize:
//                                                               MainAxisSize.min,
//                                                           crossAxisAlignment:
//                                                               CrossAxisAlignment
//                                                                   .start,
//                                                           children: [
//                                                             const Text(
//                                                               'Participation Level',
//                                                               textAlign:
//                                                                   TextAlign
//                                                                       .left,
//                                                               style: TextStyle(
//                                                                   decoration:
//                                                                       TextDecoration
//                                                                           .none,
//                                                                   fontSize: 18,
//                                                                   color: Color(
//                                                                       0xff4b3425),
//                                                                   fontWeight:
//                                                                       FontWeight
//                                                                           .normal),
//                                                               maxLines: 9999,
//                                                               overflow:
//                                                                   TextOverflow
//                                                                       .ellipsis,
//                                                             ),
//                                                             const SizedBox(
//                                                                 height: 8),
//                                                             Row(
//                                                               children: [
//                                                                 Expanded(
//                                                                   child:
//                                                                       Container(
//                                                                     child: Image
//                                                                         .asset(
//                                                                       'images/image_I3190559086419568.png',
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ],
//                                                             ),
//                                                             const SizedBox(
//                                                                 height: 8),
//                                                             Row(
//                                                               children: [
//                                                                 Expanded(
//                                                                   child:
//                                                                       Container(
//                                                                     child:
//                                                                         const Text(
//                                                                       'Level 2 (Low)',
//                                                                       textAlign:
//                                                                           TextAlign
//                                                                               .left,
//                                                                       style: TextStyle(
//                                                                           decoration: TextDecoration
//                                                                               .none,
//                                                                           fontSize:
//                                                                               14,
//                                                                           color: Color(
//                                                                               0xa31f160f),
//                                                                           fontWeight:
//                                                                               FontWeight.normal),
//                                                                       maxLines:
//                                                                           9999,
//                                                                       overflow:
//                                                                           TextOverflow
//                                                                               .ellipsis,
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ],
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 32),
//                   SizedBox(
//                     width: 343,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       mainAxisSize: MainAxisSize.min,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const SizedBox(
//                           width: 343,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Text(
//                                 'Articles  by Clubs',
//                                 textAlign: TextAlign.left,
//                                 style: TextStyle(
//                                     decoration: TextDecoration.none,
//                                     fontSize: 18,
//                                     color: Color(0xff4b3425),
//                                     fontWeight: FontWeight.normal),
//                                 maxLines: 9999,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                               SizedBox(width: 131),
//                               Text(
//                                 'See All',
//                                 textAlign: TextAlign.left,
//                                 style: TextStyle(
//                                     decoration: TextDecoration.none,
//                                     fontSize: 12,
//                                     color: Color(0xff926247),
//                                     fontWeight: FontWeight.normal),
//                                 maxLines: 9999,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(height: 12),
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           mainAxisSize: MainAxisSize.min,
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           children: [
//                             SizedBox(
//                               width: 343,
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       color: const Color(0xffffffff),
//                                       borderRadius: BorderRadius.circular(24),
//                                       boxShadow: const [
//                                         BoxShadow(
//                                             color: const Color(0x0c4b3425),
//                                             offset: Offset(0, 8),
//                                             blurRadius: 16),
//                                       ],
//                                     ),
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(16),
//                                       child: Column(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.start,
//                                         mainAxisSize: MainAxisSize.min,
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Column(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.start,
//                                             mainAxisSize: MainAxisSize.min,
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               Image.asset(
//                                                 'images/image_I31905599162539141.png',
//                                                 width: 64,
//                                                 height: 64,
//                                               ),
//                                               const SizedBox(height: 16),
//                                               Column(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment.start,
//                                                 mainAxisSize: MainAxisSize.min,
//                                                 crossAxisAlignment:
//                                                     CrossAxisAlignment.start,
//                                                 children: [
//                                                   Container(
//                                                     decoration: BoxDecoration(
//                                                       color: const Color(
//                                                           0xfff7f3f2),
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               100),
//                                                     ),
//                                                     child: const Padding(
//                                                       padding: EdgeInsets.only(
//                                                           left: 10,
//                                                           top: 6,
//                                                           right: 10,
//                                                           bottom: 6),
//                                                       child: Row(
//                                                         mainAxisAlignment:
//                                                             MainAxisAlignment
//                                                                 .center,
//                                                         mainAxisSize:
//                                                             MainAxisSize.min,
//                                                         crossAxisAlignment:
//                                                             CrossAxisAlignment
//                                                                 .center,
//                                                         children: [
//                                                           Text(
//                                                             'Personality Building',
//                                                             textAlign: TextAlign
//                                                                 .center,
//                                                             style: TextStyle(
//                                                                 decoration:
//                                                                     TextDecoration
//                                                                         .none,
//                                                                 fontSize: 10,
//                                                                 color: Color(
//                                                                     0xff926247),
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .normal),
//                                                             maxLines: 9999,
//                                                             overflow:
//                                                                 TextOverflow
//                                                                     .ellipsis,
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   const SizedBox(height: 16),
//                                                   const SizedBox(
//                                                     width: 199,
//                                                     child: Text(
//                                                       'Growth Mindset: The Key to Potential',
//                                                       textAlign: TextAlign.left,
//                                                       style: TextStyle(
//                                                           decoration:
//                                                               TextDecoration
//                                                                   .none,
//                                                           fontSize: 16,
//                                                           color:
//                                                               Color(0xff4b3425),
//                                                           fontWeight: FontWeight
//                                                               .normal),
//                                                       maxLines: 9999,
//                                                       overflow:
//                                                           TextOverflow.ellipsis,
//                                                     ),
//                                                   ),
//                                                   const SizedBox(height: 16),
//                                                   Row(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     mainAxisSize:
//                                                         MainAxisSize.min,
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .start,
//                                                     children: [
//                                                       Row(
//                                                         mainAxisAlignment:
//                                                             MainAxisAlignment
//                                                                 .start,
//                                                         mainAxisSize:
//                                                             MainAxisSize.min,
//                                                         crossAxisAlignment:
//                                                             CrossAxisAlignment
//                                                                 .center,
//                                                         children: [
//                                                           Image.asset(
//                                                             'images/image_I31905599162539126.png',
//                                                             width: 16,
//                                                             height: 16,
//                                                           ),
//                                                           const SizedBox(
//                                                               width: 4),
//                                                           const Text(
//                                                             '987 Likes',
//                                                             textAlign:
//                                                                 TextAlign.left,
//                                                             style: TextStyle(
//                                                                 decoration:
//                                                                     TextDecoration
//                                                                         .none,
//                                                                 fontSize: 10,
//                                                                 color: Color(
//                                                                     0xff4b3425),
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .normal),
//                                                             maxLines: 9999,
//                                                             overflow:
//                                                                 TextOverflow
//                                                                     .ellipsis,
//                                                           ),
//                                                         ],
//                                                       ),
//                                                       const SizedBox(width: 24),
//                                                       Row(
//                                                         mainAxisAlignment:
//                                                             MainAxisAlignment
//                                                                 .start,
//                                                         mainAxisSize:
//                                                             MainAxisSize.min,
//                                                         crossAxisAlignment:
//                                                             CrossAxisAlignment
//                                                                 .center,
//                                                         children: [
//                                                           Image.asset(
//                                                             'images/image_I31905599162539115.png',
//                                                             width: 16,
//                                                             height: 16,
//                                                           ),
//                                                           const SizedBox(
//                                                               width: 4),
//                                                           const Text(
//                                                             '5K views',
//                                                             textAlign:
//                                                                 TextAlign.left,
//                                                             style: TextStyle(
//                                                                 decoration:
//                                                                     TextDecoration
//                                                                         .none,
//                                                                 fontSize: 10,
//                                                                 color: Color(
//                                                                     0xff4b3425),
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .normal),
//                                                             maxLines: 9999,
//                                                             overflow:
//                                                                 TextOverflow
//                                                                     .ellipsis,
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ],
//                                               ),
//                                             ],
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                   const SizedBox(width: 8),
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       color: const Color(0xffffffff),
//                                       borderRadius: BorderRadius.circular(24),
//                                       boxShadow: const [
//                                         BoxShadow(
//                                             color: const Color(0x0c4b3425),
//                                             offset: Offset(0, 8),
//                                             blurRadius: 16),
//                                       ],
//                                     ),
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(16),
//                                       child: Column(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.start,
//                                         mainAxisSize: MainAxisSize.min,
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Column(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.start,
//                                             mainAxisSize: MainAxisSize.min,
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               Image.asset(
//                                                 'images/image_I31905599262539141.png',
//                                                 width: 64,
//                                                 height: 64,
//                                               ),
//                                               const SizedBox(height: 16),
//                                               Column(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment.start,
//                                                 mainAxisSize: MainAxisSize.min,
//                                                 crossAxisAlignment:
//                                                     CrossAxisAlignment.start,
//                                                 children: [
//                                                   Container(
//                                                     decoration: BoxDecoration(
//                                                       color: const Color(
//                                                           0xfff7f3f2),
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               100),
//                                                     ),
//                                                     child: const Padding(
//                                                       padding: EdgeInsets.only(
//                                                           left: 10,
//                                                           top: 6,
//                                                           right: 10,
//                                                           bottom: 6),
//                                                       child: Row(
//                                                         mainAxisAlignment:
//                                                             MainAxisAlignment
//                                                                 .center,
//                                                         mainAxisSize:
//                                                             MainAxisSize.min,
//                                                         crossAxisAlignment:
//                                                             CrossAxisAlignment
//                                                                 .center,
//                                                         children: [
//                                                           Text(
//                                                             'Mental Health',
//                                                             textAlign: TextAlign
//                                                                 .center,
//                                                             style: TextStyle(
//                                                                 decoration:
//                                                                     TextDecoration
//                                                                         .none,
//                                                                 fontSize: 10,
//                                                                 color: Color(
//                                                                     0xff926247),
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .normal),
//                                                             maxLines: 9999,
//                                                             overflow:
//                                                                 TextOverflow
//                                                                     .ellipsis,
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   const SizedBox(height: 16),
//                                                   const SizedBox(
//                                                     width: 199,
//                                                     child: Text(
//                                                       'Will meditation help you get out from the rat race?',
//                                                       textAlign: TextAlign.left,
//                                                       style: TextStyle(
//                                                           decoration:
//                                                               TextDecoration
//                                                                   .none,
//                                                           fontSize: 16,
//                                                           color:
//                                                               Color(0xff4b3425),
//                                                           fontWeight: FontWeight
//                                                               .normal),
//                                                       maxLines: 9999,
//                                                       overflow:
//                                                           TextOverflow.ellipsis,
//                                                     ),
//                                                   ),
//                                                   const SizedBox(height: 16),
//                                                   Row(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     mainAxisSize:
//                                                         MainAxisSize.min,
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .start,
//                                                     children: [
//                                                       Row(
//                                                         mainAxisAlignment:
//                                                             MainAxisAlignment
//                                                                 .start,
//                                                         mainAxisSize:
//                                                             MainAxisSize.min,
//                                                         crossAxisAlignment:
//                                                             CrossAxisAlignment
//                                                                 .center,
//                                                         children: [
//                                                           Image.asset(
//                                                             'images/image_I31905599262539126.png',
//                                                             width: 16,
//                                                             height: 16,
//                                                           ),
//                                                           const SizedBox(
//                                                               width: 4),
//                                                           const Text(
//                                                             '987 Likes',
//                                                             textAlign:
//                                                                 TextAlign.left,
//                                                             style: TextStyle(
//                                                                 decoration:
//                                                                     TextDecoration
//                                                                         .none,
//                                                                 fontSize: 10,
//                                                                 color: Color(
//                                                                     0xff4b3425),
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .normal),
//                                                             maxLines: 9999,
//                                                             overflow:
//                                                                 TextOverflow
//                                                                     .ellipsis,
//                                                           ),
//                                                         ],
//                                                       ),
//                                                       const SizedBox(width: 24),
//                                                       Row(
//                                                         mainAxisAlignment:
//                                                             MainAxisAlignment
//                                                                 .start,
//                                                         mainAxisSize:
//                                                             MainAxisSize.min,
//                                                         crossAxisAlignment:
//                                                             CrossAxisAlignment
//                                                                 .center,
//                                                         children: [
//                                                           Image.asset(
//                                                             'images/image_I31905599262539115.png',
//                                                             width: 16,
//                                                             height: 16,
//                                                           ),
//                                                           const SizedBox(
//                                                               width: 4),
//                                                           const Text(
//                                                             '5K views',
//                                                             textAlign:
//                                                                 TextAlign.left,
//                                                             style: TextStyle(
//                                                                 decoration:
//                                                                     TextDecoration
//                                                                         .none,
//                                                                 fontSize: 10,
//                                                                 color: Color(
//                                                                     0xff4b3425),
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .normal),
//                                                             maxLines: 9999,
//                                                             overflow:
//                                                                 TextOverflow
//                                                                     .ellipsis,
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ],
//                                               ),
//                                             ],
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             const SizedBox(height: 16),
//                             Image.asset(
//                               'images/image_319055993.png',
//                               width: 344,
//                               height: 8,
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Positioned(
//               left: 1,
//               right: 1,
//               top: 0,
//               height: 270,
//               child: Container(
//                 height: 270,
//                 decoration: BoxDecoration(
//                   color: const Color(0xffffffff),
//                   borderRadius: BorderRadius.circular(40),
//                   boxShadow: const [
//                     BoxShadow(
//                         color: const Color(0x0c4b3425),
//                         offset: Offset(0, 0),
//                         blurRadius: 0),
//                   ],
//                 ),
//                 child: Stack(
//                   children: [
//                     Positioned(
//                       left: 16,
//                       right: 16,
//                       top: 60,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         mainAxisSize: MainAxisSize.min,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               Expanded(
//                                 child: Container(
//                                   child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     mainAxisSize: MainAxisSize.min,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       SizedBox(
//                                         width: 343,
//                                         child: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.spaceBetween,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.center,
//                                           children: [
//                                             Row(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.start,
//                                               mainAxisSize: MainAxisSize.min,
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.center,
//                                               children: [
//                                                 Image.asset(
//                                                   'images/image_319056005.png',
//                                                   width: 20,
//                                                   height: 20,
//                                                 ),
//                                                 const SizedBox(width: 4),
//                                                 const Text(
//                                                   'Mon, 11 Nov 2024',
//                                                   textAlign: TextAlign.left,
//                                                   style: TextStyle(
//                                                       decoration:
//                                                           TextDecoration.none,
//                                                       fontSize: 12,
//                                                       color: Color(0xa31f160f),
//                                                       fontWeight:
//                                                           FontWeight.normal),
//                                                   maxLines: 9999,
//                                                   overflow:
//                                                       TextOverflow.ellipsis,
//                                                 ),
//                                               ],
//                                             ),
//                                             const SizedBox(width: 176),
//                                             Image.asset(
//                                               'images/image_319056007.png',
//                                               width: 48,
//                                               height: 48,
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                       const SizedBox(height: 12),
//                                       Row(
//                                         children: [
//                                           Expanded(
//                                             child: Container(
//                                               child: Row(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment.start,
//                                                 mainAxisSize: MainAxisSize.max,
//                                                 crossAxisAlignment:
//                                                     CrossAxisAlignment.center,
//                                                 children: [
//                                                   Image.asset(
//                                                     'images/image_319056012.png',
//                                                     width: 64,
//                                                     height: 64,
//                                                   ),
//                                                   const SizedBox(width: 12),
//                                                   Expanded(
//                                                     child: Container(
//                                                       width: double.infinity,
//                                                       child: Column(
//                                                         mainAxisAlignment:
//                                                             MainAxisAlignment
//                                                                 .start,
//                                                         mainAxisSize:
//                                                             MainAxisSize.min,
//                                                         crossAxisAlignment:
//                                                             CrossAxisAlignment
//                                                                 .start,
//                                                         children: [
//                                                           Row(
//                                                             children: [
//                                                               Expanded(
//                                                                 child:
//                                                                     Container(
//                                                                   child:
//                                                                       const Text(
//                                                                     'Hi, Shinomiya!',
//                                                                     textAlign:
//                                                                         TextAlign
//                                                                             .left,
//                                                                     style: TextStyle(
//                                                                         decoration:
//                                                                             TextDecoration
//                                                                                 .none,
//                                                                         fontSize:
//                                                                             30,
//                                                                         color: Color(
//                                                                             0xff4b3425),
//                                                                         fontWeight:
//                                                                             FontWeight.normal),
//                                                                     maxLines:
//                                                                         9999,
//                                                                     overflow:
//                                                                         TextOverflow
//                                                                             .ellipsis,
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                           const SizedBox(
//                                                               height: 4),
//                                                           Row(
//                                                             children: [
//                                                               Expanded(
//                                                                 child:
//                                                                     Container(
//                                                                   child: Row(
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .start,
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     crossAxisAlignment:
//                                                                         CrossAxisAlignment
//                                                                             .center,
//                                                                     children: [
//                                                                       Container(
//                                                                         decoration:
//                                                                             BoxDecoration(
//                                                                           color:
//                                                                               const Color(0xfff2f4ea),
//                                                                           borderRadius:
//                                                                               BorderRadius.circular(1234),
//                                                                         ),
//                                                                         child:
//                                                                             Padding(
//                                                                           padding: const EdgeInsets
//                                                                               .only(
//                                                                               left: 8,
//                                                                               top: 4,
//                                                                               right: 8,
//                                                                               bottom: 4),
//                                                                           child:
//                                                                               Column(
//                                                                             mainAxisAlignment:
//                                                                                 MainAxisAlignment.start,
//                                                                             mainAxisSize:
//                                                                                 MainAxisSize.min,
//                                                                             crossAxisAlignment:
//                                                                                 CrossAxisAlignment.center,
//                                                                             children: [
//                                                                               Row(
//                                                                                 mainAxisAlignment: MainAxisAlignment.start,
//                                                                                 mainAxisSize: MainAxisSize.min,
//                                                                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                                                                 children: [
//                                                                                   Image.asset(
//                                                                                     'images/image_319056018.png',
//                                                                                     width: 20,
//                                                                                     height: 20,
//                                                                                   ),
//                                                                                   const SizedBox(width: 4),
//                                                                                   const Text(
//                                                                                     'Female',
//                                                                                     textAlign: TextAlign.left,
//                                                                                     style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: Color(0xff9bb068), fontWeight: FontWeight.normal),
//                                                                                     maxLines: 9999,
//                                                                                     overflow: TextOverflow.ellipsis,
//                                                                                   ),
//                                                                                 ],
//                                                                               ),
//                                                                             ],
//                                                                           ),
//                                                                         ),
//                                                                       ),
//                                                                       const SizedBox(
//                                                                           width:
//                                                                               12),
//                                                                       Row(
//                                                                         mainAxisAlignment:
//                                                                             MainAxisAlignment.start,
//                                                                         mainAxisSize:
//                                                                             MainAxisSize.min,
//                                                                         crossAxisAlignment:
//                                                                             CrossAxisAlignment.center,
//                                                                         children: [
//                                                                           Image
//                                                                               .asset(
//                                                                             'images/image_319056021.png',
//                                                                             width:
//                                                                                 20,
//                                                                             height:
//                                                                                 20,
//                                                                           ),
//                                                                           const SizedBox(
//                                                                               width: 4),
//                                                                           const Text(
//                                                                             '22Y',
//                                                                             textAlign:
//                                                                                 TextAlign.left,
//                                                                             style: TextStyle(
//                                                                                 decoration: TextDecoration.none,
//                                                                                 fontSize: 12,
//                                                                                 color: Color(0xff4b3425),
//                                                                                 fontWeight: FontWeight.normal),
//                                                                             maxLines:
//                                                                                 9999,
//                                                                             overflow:
//                                                                                 TextOverflow.ellipsis,
//                                                                           ),
//                                                                         ],
//                                                                       ),
//                                                                       const SizedBox(
//                                                                           width:
//                                                                               12),
//                                                                       Row(
//                                                                         mainAxisAlignment:
//                                                                             MainAxisAlignment.start,
//                                                                         mainAxisSize:
//                                                                             MainAxisSize.min,
//                                                                         crossAxisAlignment:
//                                                                             CrossAxisAlignment.center,
//                                                                         children: [
//                                                                           Image
//                                                                               .asset(
//                                                                             'images/image_319056024.png',
//                                                                             width:
//                                                                                 20,
//                                                                             height:
//                                                                                 20,
//                                                                           ),
//                                                                           const SizedBox(
//                                                                               width: 4),
//                                                                           const Text(
//                                                                             'Clubs:3',
//                                                                             textAlign:
//                                                                                 TextAlign.left,
//                                                                             style: TextStyle(
//                                                                                 decoration: TextDecoration.none,
//                                                                                 fontSize: 12,
//                                                                                 color: Color(0xff4b3425),
//                                                                                 fontWeight: FontWeight.normal),
//                                                                             maxLines:
//                                                                                 9999,
//                                                                             overflow:
//                                                                                 TextOverflow.ellipsis,
//                                                                           ),
//                                                                         ],
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: 16),
//                           Container(
//                             width: 343,
//                             height: 48,
//                             decoration: BoxDecoration(
//                               color: const Color(0xfff7f3f2),
//                               borderRadius: BorderRadius.circular(32),
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.all(16),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Row(
//                                     children: [
//                                       Expanded(
//                                         child: Container(
//                                           child: Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.start,
//                                             mainAxisSize: MainAxisSize.max,
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.center,
//                                             children: [
//                                               Expanded(
//                                                 child: Container(
//                                                   width: double.infinity,
//                                                   child: const Text(
//                                                     'Search clubs...',
//                                                     textAlign: TextAlign.left,
//                                                     style: TextStyle(
//                                                         decoration:
//                                                             TextDecoration.none,
//                                                         fontSize: 14,
//                                                         color:
//                                                             Color(0xa31f160f),
//                                                         fontWeight:
//                                                             FontWeight.normal),
//                                                     maxLines: 9999,
//                                                     overflow:
//                                                         TextOverflow.ellipsis,
//                                                   ),
//                                                 ),
//                                               ),
//                                               const SizedBox(width: 24),
//                                               Image.asset(
//                                                 'images/image_319056029.png',
//                                                 width: 24,
//                                                 height: 24,
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Positioned(
//                       left: 0,
//                       width: 375,
//                       top: 0,
//                       height: 44,
//                       child: Image.asset(
//                         'images/image_319056030.png',
//                         width: 375,
//                         height: 44,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//               left: 1,
//               width: 375,
//               bottom: 0,
//               height: 80,
//               child: Image.asset(
//                 'images/image_319056031.png',
//                 width: 375,
//                 height: 80,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
