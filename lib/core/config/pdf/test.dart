// import 'package:flutter/services.dart';
// import 'package:pdf/pdf.dart';

// import 'package:pdf/widgets.dart';

// class ReleaseOfProducer {
//   static Future<Uint8List> printScreen() async {
//     final doc = Document();

//     final fontBase = await rootBundle.load("assets/fonts/roboto/Roboto-Light.ttf");
//     final fontBold = await rootBundle.load("assets/fonts/roboto/Roboto-Bold.ttf");
//     doc.addPage(Page(
//         textDirection: TextDirection.rtl,
//         pageFormat: PdfPageFormat.a4,
//         theme: ThemeData.withFont(
//           base: Font.ttf(
//             fontBase,
//           ),
//           bold: Font.ttf(fontBold),
//         ),
//         build: (Context context) {
//           return Directionality(
//               textDirection: TextDirection.ltr,
//               child: Stack(children: [
//                 Container(
//                   alignment: Alignment.center,
//                   transform: Matrix4.translationValues(0, 0, 0)
//                     ..rotateZ(0.0)
//                     ..scale(1.0),
//                   width: double.infinity,
//                   height: double.infinity,
//                   color: PdfColors.white,
//                   child: Text(
//                     "www.pertoot.com",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 50,
//                       fontWeight: FontWeight.bold,
//                       color: PdfColors.grey400,
//                     ),
//                   ),
//                 ),
//                 Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Container(
//                         width: double.infinity,
//                         color: PdfColors.grey300,
//                         child: Text(
//                           "Release of Producer",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontSize: 13,
//                             fontWeight: FontWeight.bold,
//                             color: PdfColors.black,
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       RichText(
//                           text: TextSpan(
//                               text:
//                               "I, in my capacity as the “Producer ”, hereby acknowledge that the related rights of the Producer in respect of________v_________________________ [to describe the Digital Item that I own its related rights, as a Producer] (“Digital Item”) are my sole and exclusive property, free and clear from any claims",
//                               style: const TextStyle(
//                                   fontSize: 11, color: PdfColors.black),
//                               children: [
//                                 TextSpan(
//                                     text: "I grant the ",
//                                     style: TextStyle(
//                                         fontSize: 11, color: PdfColors.black)),
//                                 TextSpan(
//                                     text:
//                                     "Contributor [___to insert the full name of the contributor__] ",
//                                     style: TextStyle(
//                                         fontSize: 11,
//                                         fontStyle: FontStyle.italic,
//                                         color: PdfColors.black,
//                                         fontWeight: FontWeight.bold)),
//                                 TextSpan(
//                                     text: "and ",
//                                     style: TextStyle(
//                                         fontSize: 11, color: PdfColors.black)),
//                                 TextSpan(
//                                     text: "Pertoot",
//                                     style: TextStyle(
//                                         fontSize: 11, color: PdfColors.black)),
//                                 const TextSpan(
//                                     text:
//                                     " (hereinafter referred to Pertoot and Contributor collectively as ")
//                                 //empty line
//                               ])),
//                       Text("”), the Author’s assigns, the Author’s sublicensees, and those persons acting with the Author’s authority and permission, a worldwide, perpetual, sublicensable, non-exclusive, irrevocable right, for any business purpose, to (i) use, Exploit, exploit financially, Reproduce, print, Publish, transmit, disclose, publicly display, licensing, sub-licensing, perform, archive, sell, analyze, advertise, market, in any manner and Media, the Digital Item and making the Digital Item available through computers, internet networks, information networks, communications networks, telephones, and all other future means and technologies; (ii) add, modify, translate, create derivative works incorporating, in any manner and Media, such Digital Item ; (iii) use the Digital Item for any purpose accepted by the Author in any manner and Media; (iv) combine the Digital Item with text, images, graphics, films, audio and/or visual work, in all manner and Media; (v) uploading the Digital Item on Pertoot’s Website and Pertoot’s Application in order to sell its License to third parties; and/or (vi) to sublicense the aforementioned rights to any third party."),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Text("I agree to transfer all my economic rights to the Author, including exploiting, reproducing, distributing, transmitting, publishing, publicly displaying, sub-licensing, editing, creating derivative work incorporating, archiving, selling, advertising and marketing and any other rights indicated under this release, in any manner and media, of the Digital Item for any business purpose, including with no limitation the distribution and selling of the Digital Item’s License to Pertoot’s buyers , on a non-exclusive basis, worldwide and perpetual.I further acknowledge and agree that I have no right to any consideration, compensation or additional expense for any sublicense, reproduction, distribution, publication, exploitation and/or any further rights and uses, as indicated under this release, with respect to the Digital Item, and I will not make any claims in future for any reason against the Author, and I acknowledge and agree that this release is binding on my heirs and assigns by me, and that this release is irrevocable, worldwide and permanent.")
//                       ,SizedBox(
//                         height: 15
//                       ) ,
//                       RichText(
//                           text: TextSpan(
//                               text:
//                               "I hereby release, discharge, and agree to hold harmless the Author, the Author’s heirs, legal representatives and assigns, and all persons acting under the Author’s authority or those for whom he/she is acting ",
//                               style: const TextStyle(
//                                   fontSize: 11, color: PdfColors.black),
//                               children: [
//                                 TextSpan(
//                                     text: "(“Author Related Parties”), ",
//                                     style: TextStyle(
//                                         fontSize: 11,
//                                         fontWeight: FontWeight.bold,
//                                         color: PdfColors.black)),
//                                 TextSpan(
//                                     text:
//                                     " from any liability, claims, damages, loss, expenses by virtue of any use of the Digital Item or any changes or alterations made thereto. I acknowledge that the Author is not responsible or liable for any unauthorized use or piracy of the Digital Item.",
//                                     style: TextStyle(
//                                         fontSize: 11,
//                                         color: PdfColors.black,
//                                         )),

//                                 //empty line
//                               ])),
//                       SizedBox(
//                         height: 10
//                       ),
//                       Text("I hereby agree to indemnify the Author and/or the Author Related Parties, against all damages, loss, liabilities, claims, expenses including with no limitation cost of attorney, in connection with a third-party claim against the Author and/or the Author Related Parties, and incurred by the Author and/or the Author Related Parties as a result of (i) my breach to the terms of this release; and/or (ii) violating the rights of third party."),
//                       SizedBox(
//                           height: 10
//                       ),
//                       Text("I agree and understand that my personal information provided in this release will not be made publicly available but may only be used directly in relation to the licensing of the Digital Item where necessary (e.g. to defend claims, protect rights) and may be retained as long as necessary to fulfill this purpose, including by being shared with sublicensees and assigns of the Author and transferred to countries with differing data protection and privacy laws where it may be stored, accessed and used.")
//                     ])
//               ]));
//         }));
//     // doc.addPage(Page(
//     //     textDirection: TextDirection.rtl,
//     //     pageFormat: PdfPageFormat.a4,
//     //     theme: ThemeData.withFont(
//     //       base: Font.ttf(
//     //         fontBase,
//     //       ),
//     //       bold: Font.ttf(fontBold),
//     //     ),
//     //     build: (Context context) {
//     //       return Directionality(
//     //           textDirection: TextDirection.ltr,
//     //           child: Stack(children: [
//     //             Container(
//     //               alignment: Alignment.center,
//     //               transform: Matrix4.translationValues(0, 0, 0)
//     //                 ..rotateZ(0.0)
//     //                 ..scale(1.0),
//     //               width: double.infinity,
//     //               height: double.infinity,
//     //               color: PdfColors.white,
//     //               child: Text(
//     //                 "www.pertoot.com",
//     //                 textAlign: TextAlign.center,
//     //                 style: TextStyle(
//     //                   fontSize: 50,
//     //                   fontWeight: FontWeight.bold,
//     //                   color: PdfColors.grey400,
//     //                 ),
//     //               ),
//     //             ),
//     //             Column(
//     //                 mainAxisAlignment: MainAxisAlignment.start,
//     //                 crossAxisAlignment: CrossAxisAlignment.start,
//     //                 children: <Widget>[
//     //                   Text("I hereby warrant that I am of full legal age, I have my legal capacity, and I have read this release, and I am fully familiar with the contents thereof. I agree that this release shall be binding upon me and my heirs, legal representatives and assigns. I agree that this release is valid and enforceable in the jurisdiction in which I reside, and I agree to enter into this release in the English language and hereby waive any and all claims of invalidity related to the form and terms of this release."),
//     //                   SizedBox(
//     //                     height: 10
//     //                   ),
//     //                   Text("Definitions:",style: const TextStyle(decoration: TextDecoration.underline,fontSize: 12)),
//     //                   SizedBox(
//     //                       height: 10
//     //                   ),
//     //                   RichText(text: TextSpan(
//     //
//     //                     children: [
//     //
//     //                       TextSpan(text: "License:   ",style: TextStyle(fontWeight: FontWeight.bold)),
//     //
//     //                       TextSpan(text: "means the right of using the Digital item based on the rights granted by Pertoot.")
//     //                     ]
//     //                   )),
//     //                   SizedBox(
//     //                       height: 10
//     //                   ),
//     //                   RichText(text: TextSpan(
//     //
//     //                       children: [
//     //
//     //                         TextSpan(text: "Media:   ",style: TextStyle(fontWeight: FontWeight.bold)),
//     //
//     //                         TextSpan(text: "means all media, including digital, electronic, print, television, film, radio and other media now known and which will be invented.")
//     //                       ]
//     //                   )),
//     //                   SizedBox(
//     //                       height: 10
//     //                   ),
//     //                   RichText(text: TextSpan(
//     //
//     //                       children: [
//     //
//     //                         TextSpan(text: "Pertoot:   ",style: TextStyle(fontWeight: FontWeight.bold)),
//     //
//     //                         TextSpan(text: ": means Pertoot company L.L.C., commercial registration 164223.")
//     //                       ]
//     //                   ))
//     //                   ,SizedBox(
//     //                       height: 10
//     //                   ),
//     //                   RichText(text: TextSpan(
//     //
//     //                       children: [
//     //
//     //                         TextSpan(text: "Pertoot’s Application:   ",style: TextStyle(fontWeight: FontWeight.bold)),
//     //
//     //                         TextSpan(text: ": means "),
//     //
//     //                         TextSpan(text: " Pertoot.",style: TextStyle(decoration: TextDecoration.underline)),
//     //                       ]
//     //                   ))
//     //                   ,SizedBox(
//     //                       height: 10
//     //                   ),
//     //                   RichText(text: TextSpan(
//     //
//     //                       children: [
//     //
//     //                         TextSpan(text: "Pertoot’s Website:   ",style: TextStyle(fontWeight: FontWeight.bold)),
//     //
//     //                         TextSpan(text: ": means "),
//     //
//     //                         TextSpan(text: " www.Pertoot.com",style: TextStyle(decoration: TextDecoration.underline)),
//     //                       ]
//     //                   )),
//     //                   SizedBox(
//     //                     height: 10
//     //                   ),
//     //                   Text("Witness",style: TextStyle(
//     //                     decoration: TextDecoration.underline,
//     //                     fontWeight: FontWeight.bold
//     //                   )),
//     //
//     //                   SizedBox(
//     //                     height: 10
//     //                   ),
//     //
//     //                   Text("I hereby confirm that I personally witnessed the signature of the Producer to this Release.",style: TextStyle()),
//     //                   SizedBox(
//     //                       height: 10
//     //                   ),
//     //                   Text("(The person who sign, as a witness, must be of legal age, having the legal capacity in the region where this release is signed, and the Producer and the Author must not be a witness to this release)",style: TextStyle()),
//     //                   SizedBox(
//     //                       height: 10
//     //                   ),
//     //                   Text("Name:"),
//     //                   SizedBox(
//     //                       height: 10
//     //                   ),
//     //                   Text("ID/Passport number:"),
//     //                   SizedBox(
//     //                       height: 10
//     //                   ),
//     //                   Text("Signature:"),
//     //                   SizedBox(
//     //                       height: 10
//     //                   ),
//     //                   Text("Date:"),
//     //                   SizedBox(
//     //                       height: 10
//     //                   ),
//     //                   Text("Producer ",style: TextStyle(
//     //                     fontWeight: FontWeight.bold,
//     //                     decoration: TextDecoration.underline
//     //                   )),
//     //                   SizedBox(
//     //                       height: 10
//     //                   ),
//     //                   Text("Name:"),
//     //                   SizedBox(
//     //                       height: 10
//     //                   ),
//     //                   Text("Signature :"),
//     //                   SizedBox(
//     //                       height: 10
//     //                   ),
//     //                   Text("Date:"),
//     //                   SizedBox(
//     //                       height: 10
//     //                   ),
//     //                 ])
//     //           ]));
//     //     }));
//     return doc.save();
//   }

// }
