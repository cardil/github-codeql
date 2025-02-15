// generated by codegen/codegen.py
import codeql.swift.elements
import TestUtils

from
  ImportDecl x, ModuleDecl getModule, string isExported, string hasImportedModule,
  int getNumberOfDeclarations
where
  toBeTested(x) and
  not x.isUnknown() and
  getModule = x.getModule() and
  (if x.isExported() then isExported = "yes" else isExported = "no") and
  (if x.hasImportedModule() then hasImportedModule = "yes" else hasImportedModule = "no") and
  getNumberOfDeclarations = x.getNumberOfDeclarations()
select x, "getModule:", getModule, "isExported:", isExported, "hasImportedModule:",
  hasImportedModule, "getNumberOfDeclarations:", getNumberOfDeclarations
