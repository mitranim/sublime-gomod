// SYNTAX TEST "Gomod.sublime-syntax"

    // comment
//  ^^^^^^^^^^ comment.line.gomod
//  ^^ punctuation.definition.comment.gomod



// # Unknown statements

    ident
//  ^^^^^ keyword.gomod

    ident ident
//  ^^^^^ keyword.gomod
//        ^^^^^ variable.gomod

    ident.ident/ident-ident ident.ident/ident-ident
//  ^^^^^^^^^^^^^^^^^^^^^^^ keyword.gomod
//                          ^^^^^^^^^^^^^^^^^^^^^^^ variable.gomod

    ident ident ident ident
//  ^^^^^ keyword.gomod
//        ^^^^^ variable.gomod
//              ^^^^^ variable.gomod
//                    ^^^^^ variable.gomod

    []{}/1234/ident/[]{} ident
//  ^^^^^^^^^^^^^^^^^^^^ keyword.gomod
//                       ^^^^^ variable.gomod

    ()ident() ident
//  ^ punctuation.section.parens.begin.gomod
//   ^ punctuation.section.parens.end.gomod
//    ^^^^^ keyword.gomod
//         ^ punctuation.section.parens.begin.gomod
//          ^ punctuation.section.parens.end.gomod
//            ^^^^^ variable.gomod



// # Known statements

    exclude ident//comment
//  ^^^^^^^ keyword.gomod
//          ^^^^^ variable.gomod
//               ^^^^^^^^^^ comment.line.gomod

    exclude ident version//comment
//  ^^^^^^^ keyword.gomod
//          ^^^^^ variable.gomod
//                ^^^^^^^ string.version.gomod
//                       ^^^^^^^^^^ comment.line.gomod

    exclude(ident version)//comment
//  ^^^^^^^ keyword.gomod
//         ^ punctuation.section.parens.begin.gomod
//          ^^^^^ variable.gomod
//                ^^^^^^^ string.version.gomod
//                       ^ punctuation.section.parens.end.gomod
//                        ^^^^^^^^^^ comment.line.gomod

    exclude (//comment
//  ^^^^^^^ keyword.gomod
//          ^ punctuation.section.parens.begin.gomod
//           ^^^^^^^^^^ comment.line.gomod
        ident
//      ^^^^^ variable.gomod
        ident version
//      ^^^^^ variable.gomod
//            ^^^^^^^ string.version.gomod
        ident//comment
//      ^^^^^ variable.gomod
//           ^^^^^^^^^^ comment.line.gomod
        ident version//comment
//      ^^^^^ variable.gomod
//            ^^^^^^^ string.version.gomod
//                   ^^^^^^^^^^ comment.line.gomod
    )//comment
//  ^ punctuation.section.parens.end.gomod
//   ^^^^^^^^^^ comment.line.gomod

    module ident//comment
//  ^^^^^^ keyword.gomod
//         ^^^^^ variable.gomod
//              ^^^^^^^^^^ comment.line.gomod

    module ident version//comment
//  ^^^^^^ keyword.gomod
//         ^^^^^ variable.gomod
//               ^^^^^^^ string.version.gomod
//                      ^^^^^^^^^^ comment.line.gomod

    module(ident version)//comment
//  ^^^^^^ keyword.gomod
//        ^ punctuation.section.parens.begin.gomod
//         ^^^^^ variable.gomod
//               ^^^^^^^ string.version.gomod
//                      ^ punctuation.section.parens.end.gomod
//                       ^^^^^^^^^^ comment.line.gomod

    module (//comment
//  ^^^^^^ keyword.gomod
//         ^ punctuation.section.parens.begin.gomod
//          ^^^^^^^^^^ comment.line.gomod
       ident
//     ^^^^^ variable.gomod
       ident version
//     ^^^^^ variable.gomod
//           ^^^^^^^ string.version.gomod
       ident//comment
//     ^^^^^ variable.gomod
//          ^^^^^^^^^^ comment.line.gomod
       ident version//comment
//     ^^^^^ variable.gomod
//           ^^^^^^^ string.version.gomod
//                  ^^^^^^^^^^ comment.line.gomod
    )//comment
//  ^ punctuation.section.parens.end.gomod
//   ^^^^^^^^^^ comment.line.gomod

    replace ident => ident//comment
//  ^^^^^^^ keyword.gomod
//          ^^^^^ variable.gomod
//                ^^ keyword.operator.gomod
//                   ^^^^^ variable.gomod
//                        ^^^^^^^^^^ comment.line.gomod

    replace ident version => ident//comment
//  ^^^^^^^ keyword.gomod
//          ^^^^^ variable.gomod
//                ^^^^^^^ string.version.gomod
//                        ^^ keyword.operator.gomod
//                           ^^^^^ variable.gomod
//                                ^^^^^^^^^^ comment.line.gomod

    replace ident => ident version//comment
//  ^^^^^^^ keyword.gomod
//          ^^^^^ variable.gomod
//                ^^ keyword.operator.gomod
//                   ^^^^^ variable.gomod
//                         ^^^^^^^ string.version.gomod
//                                ^^^^^^^^^^ comment.line.gomod

    replace ident version => ident version//comment
//  ^^^^^^^ keyword.gomod
//          ^^^^^ variable.gomod
//                ^^^^^^^ string.version.gomod
//                        ^^ keyword.operator.gomod
//                           ^^^^^ variable.gomod
//                                 ^^^^^^^ string.version.gomod
//                                        ^^^^^^^^^^ comment.line.gomod

    replace ident=>ident version=>version => ident=>ident version=>version//comment
//  ^^^^^^^ keyword.gomod
//          ^^^^^^^^^^^^ variable.gomod
//                       ^^^^^^^^^^^^^^^^ string.version.gomod
//                                        ^^ keyword.operator.gomod
//                                           ^^^^^^^^^^^^ variable.gomod
//                                                        ^^^^^^^^^^^^^^^^ string.version.gomod
//                                                                        ^^^^^^^^^^ comment.line.gomod

    replace (ident version => ident version)//comment
//  ^^^^^^^ keyword.gomod
//          ^ punctuation.section.parens.begin.gomod
//           ^^^^^ variable.gomod
//                 ^^^^^^^ string.version.gomod
//                         ^^ keyword.operator.gomod
//                            ^^^^^ variable.gomod
//                                  ^^^^^^^ string.version.gomod
//                                         ^ punctuation.section.parens.end.gomod
//                                          ^^^^^^^^^^ comment.line.gomod

    replace (//comment
//  ^^^^^^^ keyword.gomod
//          ^ punctuation.section.parens.begin.gomod
//           ^^^^^^^^^^ comment.line.gomod
        ident => ident//comment
//      ^^^^^ variable.gomod
//            ^^ keyword.operator.gomod
//               ^^^^^ variable.gomod
//                    ^^^^^^^^^^ comment.line.gomod
        ident => ident version//comment
//      ^^^^^ variable.gomod
//            ^^ keyword.operator.gomod
//               ^^^^^ variable.gomod
//                     ^^^^^^^ string.version.gomod
//                            ^^^^^^^^^^ comment.line.gomod
        ident version => ident//comment
//      ^^^^^ variable.gomod
//            ^^^^^^^ string.version.gomod
//                    ^^ keyword.operator.gomod
//                       ^^^^^ variable.gomod
//                            ^^^^^^^^^^ comment.line.gomod
        ident version => ident version//comment
//      ^^^^^ variable.gomod
//            ^^^^^^^ string.version.gomod
//                    ^^ keyword.operator.gomod
//                       ^^^^^ variable.gomod
//                             ^^^^^^^ string.version.gomod
//                                    ^^^^^^^^^^ comment.line.gomod
    )//comment
//  ^ punctuation.section.parens.end.gomod
//   ^^^^^^^^^^ comment.line.gomod

    require ident//comment
//  ^^^^^^^ keyword.gomod
//          ^^^^^ variable.gomod
//               ^^^^^^^^^^ comment.line.gomod

    require ident version//comment
//  ^^^^^^^ keyword.gomod
//          ^^^^^ variable.gomod
//                ^^^^^^^ string.version.gomod
//                       ^^^^^^^^^^ comment.line.gomod

    require(ident version)//comment
//  ^^^^^^^ keyword.gomod
//         ^ punctuation.section.parens.begin.gomod
//          ^^^^^ variable.gomod
//                ^^^^^^^ string.version.gomod
//                       ^ punctuation.section.parens.end.gomod
//                        ^^^^^^^^^^ comment.line.gomod

    require (//comment
//  ^^^^^^^ keyword.gomod
//          ^ punctuation.section.parens.begin.gomod
//           ^^^^^^^^^^ comment.line.gomod
        ident
//      ^^^^^ variable.gomod
        ident version
//      ^^^^^ variable.gomod
//            ^^^^^^^ string.version.gomod
        ident//comment
//      ^^^^^ variable.gomod
//           ^^^^^^^^^^ comment.line.gomod
        ident version//comment
//      ^^^^^ variable.gomod
//            ^^^^^^^ string.version.gomod
//                   ^^^^^^^^^^ comment.line.gomod
    )//comment
//  ^ punctuation.section.parens.end.gomod
//   ^^^^^^^^^^ comment.line.gomod

    tool ident//comment
//  ^^^^ keyword.gomod
//       ^^^^^ variable.gomod
//            ^^^^^^^^^^ comment.line.gomod

    tool ident version//comment
//  ^^^^ keyword.gomod
//       ^^^^^ variable.gomod
//             ^^^^^^^ string.version.gomod
//                    ^^^^^^^^^^ comment.line.gomod

    tool(ident version)//comment
//  ^^^^ keyword.gomod
//      ^ punctuation.section.parens.begin.gomod
//       ^^^^^ variable.gomod
//             ^^^^^^^ string.version.gomod
//                    ^ punctuation.section.parens.end.gomod
//                     ^^^^^^^^^^ comment.line.gomod

    tool (//comment
//  ^^^^ keyword.gomod
//       ^ punctuation.section.parens.begin.gomod
//        ^^^^^^^^^^ comment.line.gomod
        ident
//      ^^^^^ variable.gomod
        ident version
//      ^^^^^ variable.gomod
//            ^^^^^^^ string.version.gomod
        ident//comment
//      ^^^^^ variable.gomod
//           ^^^^^^^^^^ comment.line.gomod
        ident version//comment
//      ^^^^^ variable.gomod
//            ^^^^^^^ string.version.gomod
//                   ^^^^^^^^^^ comment.line.gomod
    )//comment
//  ^ punctuation.section.parens.end.gomod
//   ^^^^^^^^^^ comment.line.gomod
