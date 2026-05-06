# Field Notes

This note keeps the compilers assumptions visible beside the checks.

The domain cases cover `IR pressure`, `lowering drift`, `stack depth`, and `diagnostic reach`. They sit beside the smaller starter fixture so the project has both a compact scoring check and a domain-flavored review check.

`baseline` is the strongest case at 231 on `IR pressure`. `edge` is the cautious anchor at 142 on `stack depth`.

The extra check gives the repository a behavior path that can fail for a domain reason, not only a syntax reason.
