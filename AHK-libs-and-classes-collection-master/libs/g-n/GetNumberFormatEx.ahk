﻿; ===============================================================================================================================
; Formats a number string as a number string customized for a locale specified by identifier.
; ===============================================================================================================================

GetNumberFormatEx(VarIn, locale := "!x-sys-default-locale") {
    if !(size := DllCall("GetNumberFormatEx", "Ptr", &locale, "UInt", 0, "Ptr", &VarIn, "Ptr", 0, "Ptr", 0, "Int", 0))
        throw Exception("GetNumberFormatEx", -1)
    VarSetCapacity(buf, size * (A_IsUnicode ? 2 : 1), 0)
    if !(DllCall("GetNumberFormatEx", "Ptr", &locale, "UInt", 0, "Ptr", &VarIn, "Ptr", 0, "Str", buf, "Int", size))
        throw Exception("GetNumberFormatEx", -1)
    return buf
}

; ===============================================================================================================================

;~ MsgBox % GetNumberFormatEx(1149.99)                   ; ==> 1.149,99         ( LANG_USER_DEFAULT | SUBLANG_DEFAULT    )
;~ MsgBox % GetNumberFormatEx(1149.99, "en-US")          ; ==> 1,149.99         ( LANG_ENGLISH      | SUBLANG_ENGLISH_US )
;~ MsgBox % GetNumberFormatEx(1149.99, "en-GB")          ; ==> 1,149.99         ( LANG_ENGLISH      | SUBLANG_ENGLISH_US )
;~ MsgBox % GetNumberFormatEx(1149.99, "de-DE")          ; ==> 1.149,99         ( LANG_GERMAN       | SUBLANG_GERMAN     )