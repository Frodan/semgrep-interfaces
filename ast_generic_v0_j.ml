(* Auto-generated from "ast_generic_v0.atd" *)
[@@@ocaml.warning "-27-32-33-35-39"]

type class_kind = Ast_generic_v0_t.class_kind

type concat_string_kind = Ast_generic_v0_t.concat_string_kind

type const_type = Ast_generic_v0_t.const_type

type container_operator = Ast_generic_v0_t.container_operator

type function_kind = Ast_generic_v0_t.function_kind

type incr_decr = Ast_generic_v0_t.incr_decr

type keyword_attribute = Ast_generic_v0_t.keyword_attribute

type operator = Ast_generic_v0_t.operator

type prefix_postfix = Ast_generic_v0_t.prefix_postfix

type sid = Ast_generic_v0_t.sid

type special = Ast_generic_v0_t.special

type token_location = Ast_generic_v0_t.token_location = {
  str: string;
  charpos: int;
  line: int;
  column: int;
  filename: string
}

type token = Ast_generic_v0_t.token

type tok = Ast_generic_v0_t.tok

type 'a bracket = 'a Ast_generic_v0_t.bracket

type sc = Ast_generic_v0_t.sc

type 'a wrap_ = 'a Ast_generic_v0_t.wrap_

type ident = Ast_generic_v0_t.ident

type dotted_ident = Ast_generic_v0_t.dotted_ident

type label = Ast_generic_v0_t.label

type literal = Ast_generic_v0_t.literal

type constness = Ast_generic_v0_t.constness

type module_name = Ast_generic_v0_t.module_name

type resolved_name_kind = Ast_generic_v0_t.resolved_name_kind

type resolved_name = Ast_generic_v0_t.resolved_name

type xml_kind = Ast_generic_v0_t.xml_kind

type action = Ast_generic_v0_t.action

and alias = Ast_generic_v0_t.alias

and any = Ast_generic_v0_t.any

and argument = Ast_generic_v0_t.argument

and arguments = Ast_generic_v0_t.arguments

and attribute = Ast_generic_v0_t.attribute

and case = Ast_generic_v0_t.case

and case_and_body = Ast_generic_v0_t.case_and_body

and catch = Ast_generic_v0_t.catch

and class_definition = Ast_generic_v0_t.class_definition = {
  ckind: class_kind wrap_;
  cextends: type_ list;
  cimplements: type_ list;
  cmixins: type_ list;
  cparams: parameters;
  cbody: field list bracket
}

and definition = Ast_generic_v0_t.definition

and definition_kind = Ast_generic_v0_t.definition_kind

and directive = Ast_generic_v0_t.directive

and entity = Ast_generic_v0_t.entity = {
  name: name_or_dynamic;
  attrs: attribute list;
  tparams: type_parameter list
}

and expr = Ast_generic_v0_t.expr

and field = Ast_generic_v0_t.field

and finally = Ast_generic_v0_t.finally

and for_header = Ast_generic_v0_t.for_header

and for_var_or_expr = Ast_generic_v0_t.for_var_or_expr

and function_definition = Ast_generic_v0_t.function_definition = {
  fkind: function_kind wrap_;
  fparams: parameters;
  frettype: type_ option;
  fbody: stmt
}

and id_info = Ast_generic_v0_t.id_info = {
  id_resolved: resolved_name option;
  id_type: type_ option;
  id_constness: constness option
}

and item = Ast_generic_v0_t.item

and label_ident = Ast_generic_v0_t.label_ident

and macro_definition = Ast_generic_v0_t.macro_definition = {
  macroparams: ident list;
  macrobody: any list
}

and module_definition = Ast_generic_v0_t.module_definition = {
  mbody: module_definition_kind
}

and module_definition_kind = Ast_generic_v0_t.module_definition_kind

and name = Ast_generic_v0_t.name

and name_info = Ast_generic_v0_t.name_info = {
  name_qualifier: qualifier option;
  name_typeargs: type_arguments option
}

and name_or_dynamic = Ast_generic_v0_t.name_or_dynamic

and or_type_element = Ast_generic_v0_t.or_type_element

and parameter = Ast_generic_v0_t.parameter

and parameter_classic = Ast_generic_v0_t.parameter_classic = {
  pname: ident option;
  ptype: type_ option;
  pdefault: expr option;
  pattrs: attribute list;
  pinfo: id_info
}

and parameters = Ast_generic_v0_t.parameters

and pattern = Ast_generic_v0_t.pattern

and qualifier = Ast_generic_v0_t.qualifier

and stmt = Ast_generic_v0_t.stmt = { s: stmt_kind; s_id: int }

and stmt_kind = Ast_generic_v0_t.stmt_kind

and type_ = Ast_generic_v0_t.type_

and type_argument = Ast_generic_v0_t.type_argument

and type_arguments = Ast_generic_v0_t.type_arguments

and type_definition = Ast_generic_v0_t.type_definition = {
  tbody: type_definition_kind
}

and type_definition_kind = Ast_generic_v0_t.type_definition_kind

and type_parameter = Ast_generic_v0_t.type_parameter

and type_parameter_constraint = Ast_generic_v0_t.type_parameter_constraint

and variable_definition = Ast_generic_v0_t.variable_definition = {
  vinit: expr option;
  vtype: type_ option
}

and xml = Ast_generic_v0_t.xml = {
  xml_kind: xml_kind;
  xml_attrs: xml_attribute list;
  xml_body: xml_body list
}

and xml_attr_value = Ast_generic_v0_t.xml_attr_value

and xml_attribute = Ast_generic_v0_t.xml_attribute

and xml_body = Ast_generic_v0_t.xml_body

type program = Ast_generic_v0_t.program

let write__21 = (
  Atdgen_runtime.Oj_run.write_std_option (
    Yojson.Safe.write_int
  )
)
let string_of__21 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__21 ob x;
  Bi_outbuf.contents ob
let read__21 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "None" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (None : _ option)
            | "Some" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "None" ->
              (None : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Some" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let _21_of_string s =
  read__21 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__23 = (
  Atdgen_runtime.Oj_run.write_std_option (
    Yojson.Safe.write_std_float
  )
)
let string_of__23 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__23 ob x;
  Bi_outbuf.contents ob
let read__23 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "None" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (None : _ option)
            | "Some" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  Atdgen_runtime.Oj_run.read_number
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "None" ->
              (None : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Some" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  Atdgen_runtime.Oj_run.read_number
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let _23_of_string s =
  read__23 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_class_kind = (
  fun ob x ->
    match x with
      | `Class -> Bi_outbuf.add_string ob "\"Class\""
      | `Interface -> Bi_outbuf.add_string ob "\"Interface\""
      | `Trait -> Bi_outbuf.add_string ob "\"Trait\""
      | `Object -> Bi_outbuf.add_string ob "\"Object\""
      | `RecordClass -> Bi_outbuf.add_string ob "\"RecordClass\""
      | `AtInterface -> Bi_outbuf.add_string ob "\"AtInterface\""
)
let string_of_class_kind ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_class_kind ob x;
  Bi_outbuf.contents ob
let read_class_kind = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "Class" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Class
            | "Interface" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Interface
            | "Trait" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Trait
            | "Object" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Object
            | "RecordClass" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `RecordClass
            | "AtInterface" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `AtInterface
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "Class" ->
              `Class
            | "Interface" ->
              `Interface
            | "Trait" ->
              `Trait
            | "Object" ->
              `Object
            | "RecordClass" ->
              `RecordClass
            | "AtInterface" ->
              `AtInterface
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let class_kind_of_string s =
  read_class_kind (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_concat_string_kind = (
  fun ob x ->
    match x with
      | `InterpolatedConcat -> Bi_outbuf.add_string ob "\"InterpolatedConcat\""
      | `SequenceConcat -> Bi_outbuf.add_string ob "\"SequenceConcat\""
      | `FString x ->
        Bi_outbuf.add_string ob "[\"FString\",";
        (
          Yojson.Safe.write_string
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
let string_of_concat_string_kind ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_concat_string_kind ob x;
  Bi_outbuf.contents ob
let read_concat_string_kind = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "InterpolatedConcat" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `InterpolatedConcat
            | "SequenceConcat" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `SequenceConcat
            | "FString" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `FString x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "InterpolatedConcat" ->
              `InterpolatedConcat
            | "SequenceConcat" ->
              `SequenceConcat
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "FString" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `FString x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let concat_string_kind_of_string s =
  read_concat_string_kind (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_const_type = (
  fun ob x ->
    match x with
      | `Cbool -> Bi_outbuf.add_string ob "\"Cbool\""
      | `Cint -> Bi_outbuf.add_string ob "\"Cint\""
      | `Cstr -> Bi_outbuf.add_string ob "\"Cstr\""
      | `Cany -> Bi_outbuf.add_string ob "\"Cany\""
)
let string_of_const_type ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_const_type ob x;
  Bi_outbuf.contents ob
let read_const_type = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "Cbool" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Cbool
            | "Cint" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Cint
            | "Cstr" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Cstr
            | "Cany" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Cany
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "Cbool" ->
              `Cbool
            | "Cint" ->
              `Cint
            | "Cstr" ->
              `Cstr
            | "Cany" ->
              `Cany
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let const_type_of_string s =
  read_const_type (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_container_operator = (
  fun ob x ->
    match x with
      | `Array -> Bi_outbuf.add_string ob "\"Array\""
      | `List -> Bi_outbuf.add_string ob "\"List\""
      | `Set -> Bi_outbuf.add_string ob "\"Set\""
      | `Dict -> Bi_outbuf.add_string ob "\"Dict\""
)
let string_of_container_operator ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_container_operator ob x;
  Bi_outbuf.contents ob
let read_container_operator = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "Array" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Array
            | "List" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `List
            | "Set" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Set
            | "Dict" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Dict
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "Array" ->
              `Array
            | "List" ->
              `List
            | "Set" ->
              `Set
            | "Dict" ->
              `Dict
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let container_operator_of_string s =
  read_container_operator (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_function_kind = (
  fun ob x ->
    match x with
      | `Function -> Bi_outbuf.add_string ob "\"Function\""
      | `Method -> Bi_outbuf.add_string ob "\"Method\""
      | `LambdaKind -> Bi_outbuf.add_string ob "\"LambdaKind\""
      | `Arrow -> Bi_outbuf.add_string ob "\"Arrow\""
)
let string_of_function_kind ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_function_kind ob x;
  Bi_outbuf.contents ob
let read_function_kind = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "Function" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Function
            | "Method" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Method
            | "LambdaKind" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `LambdaKind
            | "Arrow" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Arrow
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "Function" ->
              `Function
            | "Method" ->
              `Method
            | "LambdaKind" ->
              `LambdaKind
            | "Arrow" ->
              `Arrow
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let function_kind_of_string s =
  read_function_kind (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_incr_decr = (
  fun ob x ->
    match x with
      | `Incr -> Bi_outbuf.add_string ob "\"Incr\""
      | `Decr -> Bi_outbuf.add_string ob "\"Decr\""
)
let string_of_incr_decr ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_incr_decr ob x;
  Bi_outbuf.contents ob
let read_incr_decr = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "Incr" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Incr
            | "Decr" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Decr
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "Incr" ->
              `Incr
            | "Decr" ->
              `Decr
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let incr_decr_of_string s =
  read_incr_decr (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_keyword_attribute = (
  fun ob x ->
    match x with
      | `Static -> Bi_outbuf.add_string ob "\"Static\""
      | `Volatile -> Bi_outbuf.add_string ob "\"Volatile\""
      | `Extern -> Bi_outbuf.add_string ob "\"Extern\""
      | `Public -> Bi_outbuf.add_string ob "\"Public\""
      | `Private -> Bi_outbuf.add_string ob "\"Private\""
      | `Protected -> Bi_outbuf.add_string ob "\"Protected\""
      | `Abstract -> Bi_outbuf.add_string ob "\"Abstract\""
      | `Final -> Bi_outbuf.add_string ob "\"Final\""
      | `Override -> Bi_outbuf.add_string ob "\"Override\""
      | `Var -> Bi_outbuf.add_string ob "\"Var\""
      | `Let -> Bi_outbuf.add_string ob "\"Let\""
      | `Mutable -> Bi_outbuf.add_string ob "\"Mutable\""
      | `Const -> Bi_outbuf.add_string ob "\"Const\""
      | `Optional -> Bi_outbuf.add_string ob "\"Optional\""
      | `NotNull -> Bi_outbuf.add_string ob "\"NotNull\""
      | `Generator -> Bi_outbuf.add_string ob "\"Generator\""
      | `Async -> Bi_outbuf.add_string ob "\"Async\""
      | `Recursive -> Bi_outbuf.add_string ob "\"Recursive\""
      | `MutuallyRecursive -> Bi_outbuf.add_string ob "\"MutuallyRecursive\""
      | `Inline -> Bi_outbuf.add_string ob "\"Inline\""
      | `Ctor -> Bi_outbuf.add_string ob "\"Ctor\""
      | `Dtor -> Bi_outbuf.add_string ob "\"Dtor\""
      | `Getter -> Bi_outbuf.add_string ob "\"Getter\""
      | `Setter -> Bi_outbuf.add_string ob "\"Setter\""
      | `Unsafe -> Bi_outbuf.add_string ob "\"Unsafe\""
      | `DefaultImpl -> Bi_outbuf.add_string ob "\"DefaultImpl\""
)
let string_of_keyword_attribute ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_keyword_attribute ob x;
  Bi_outbuf.contents ob
let read_keyword_attribute = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "Static" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Static
            | "Volatile" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Volatile
            | "Extern" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Extern
            | "Public" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Public
            | "Private" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Private
            | "Protected" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Protected
            | "Abstract" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Abstract
            | "Final" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Final
            | "Override" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Override
            | "Var" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Var
            | "Let" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Let
            | "Mutable" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Mutable
            | "Const" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Const
            | "Optional" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Optional
            | "NotNull" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `NotNull
            | "Generator" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Generator
            | "Async" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Async
            | "Recursive" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Recursive
            | "MutuallyRecursive" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `MutuallyRecursive
            | "Inline" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Inline
            | "Ctor" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Ctor
            | "Dtor" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Dtor
            | "Getter" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Getter
            | "Setter" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Setter
            | "Unsafe" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Unsafe
            | "DefaultImpl" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `DefaultImpl
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "Static" ->
              `Static
            | "Volatile" ->
              `Volatile
            | "Extern" ->
              `Extern
            | "Public" ->
              `Public
            | "Private" ->
              `Private
            | "Protected" ->
              `Protected
            | "Abstract" ->
              `Abstract
            | "Final" ->
              `Final
            | "Override" ->
              `Override
            | "Var" ->
              `Var
            | "Let" ->
              `Let
            | "Mutable" ->
              `Mutable
            | "Const" ->
              `Const
            | "Optional" ->
              `Optional
            | "NotNull" ->
              `NotNull
            | "Generator" ->
              `Generator
            | "Async" ->
              `Async
            | "Recursive" ->
              `Recursive
            | "MutuallyRecursive" ->
              `MutuallyRecursive
            | "Inline" ->
              `Inline
            | "Ctor" ->
              `Ctor
            | "Dtor" ->
              `Dtor
            | "Getter" ->
              `Getter
            | "Setter" ->
              `Setter
            | "Unsafe" ->
              `Unsafe
            | "DefaultImpl" ->
              `DefaultImpl
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let keyword_attribute_of_string s =
  read_keyword_attribute (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_operator = (
  fun ob x ->
    match x with
      | `Plus -> Bi_outbuf.add_string ob "\"Plus\""
      | `Minus -> Bi_outbuf.add_string ob "\"Minus\""
      | `Mult -> Bi_outbuf.add_string ob "\"Mult\""
      | `Div -> Bi_outbuf.add_string ob "\"Div\""
      | `Mod -> Bi_outbuf.add_string ob "\"Mod\""
      | `Pow -> Bi_outbuf.add_string ob "\"Pow\""
      | `FloorDiv -> Bi_outbuf.add_string ob "\"FloorDiv\""
      | `MatMult -> Bi_outbuf.add_string ob "\"MatMult\""
      | `LSL -> Bi_outbuf.add_string ob "\"LSL\""
      | `LSR -> Bi_outbuf.add_string ob "\"LSR\""
      | `ASR -> Bi_outbuf.add_string ob "\"ASR\""
      | `BitOr -> Bi_outbuf.add_string ob "\"BitOr\""
      | `BitXor -> Bi_outbuf.add_string ob "\"BitXor\""
      | `BitAnd -> Bi_outbuf.add_string ob "\"BitAnd\""
      | `BitNot -> Bi_outbuf.add_string ob "\"BitNot\""
      | `BitClear -> Bi_outbuf.add_string ob "\"BitClear\""
      | `And -> Bi_outbuf.add_string ob "\"And\""
      | `Or -> Bi_outbuf.add_string ob "\"Or\""
      | `Xor -> Bi_outbuf.add_string ob "\"Xor\""
      | `Pipe -> Bi_outbuf.add_string ob "\"Pipe\""
      | `Not -> Bi_outbuf.add_string ob "\"Not\""
      | `Eq -> Bi_outbuf.add_string ob "\"Eq\""
      | `NotEq -> Bi_outbuf.add_string ob "\"NotEq\""
      | `PhysEq -> Bi_outbuf.add_string ob "\"PhysEq\""
      | `NotPhysEq -> Bi_outbuf.add_string ob "\"NotPhysEq\""
      | `Lt -> Bi_outbuf.add_string ob "\"Lt\""
      | `LtE -> Bi_outbuf.add_string ob "\"LtE\""
      | `Gt -> Bi_outbuf.add_string ob "\"Gt\""
      | `GtE -> Bi_outbuf.add_string ob "\"GtE\""
      | `Cmp -> Bi_outbuf.add_string ob "\"Cmp\""
      | `Concat -> Bi_outbuf.add_string ob "\"Concat\""
      | `Append -> Bi_outbuf.add_string ob "\"Append\""
      | `RegexpMatch -> Bi_outbuf.add_string ob "\"RegexpMatch\""
      | `NotMatch -> Bi_outbuf.add_string ob "\"NotMatch\""
      | `Range -> Bi_outbuf.add_string ob "\"Range\""
      | `RangeInclusive -> Bi_outbuf.add_string ob "\"RangeInclusive\""
      | `NotNullPostfix -> Bi_outbuf.add_string ob "\"NotNullPostfix\""
      | `Length -> Bi_outbuf.add_string ob "\"Length\""
      | `Elvis -> Bi_outbuf.add_string ob "\"Elvis\""
      | `Nullish -> Bi_outbuf.add_string ob "\"Nullish\""
      | `In -> Bi_outbuf.add_string ob "\"In\""
      | `NotIn -> Bi_outbuf.add_string ob "\"NotIn\""
      | `Is -> Bi_outbuf.add_string ob "\"Is\""
      | `NotIs -> Bi_outbuf.add_string ob "\"NotIs\""
      | `Background -> Bi_outbuf.add_string ob "\"Background\""
)
let string_of_operator ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_operator ob x;
  Bi_outbuf.contents ob
let read_operator = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "Plus" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Plus
            | "Minus" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Minus
            | "Mult" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Mult
            | "Div" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Div
            | "Mod" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Mod
            | "Pow" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Pow
            | "FloorDiv" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `FloorDiv
            | "MatMult" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `MatMult
            | "LSL" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `LSL
            | "LSR" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `LSR
            | "ASR" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ASR
            | "BitOr" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `BitOr
            | "BitXor" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `BitXor
            | "BitAnd" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `BitAnd
            | "BitNot" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `BitNot
            | "BitClear" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `BitClear
            | "And" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `And
            | "Or" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Or
            | "Xor" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Xor
            | "Pipe" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Pipe
            | "Not" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Not
            | "Eq" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Eq
            | "NotEq" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `NotEq
            | "PhysEq" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `PhysEq
            | "NotPhysEq" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `NotPhysEq
            | "Lt" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Lt
            | "LtE" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `LtE
            | "Gt" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Gt
            | "GtE" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `GtE
            | "Cmp" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Cmp
            | "Concat" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Concat
            | "Append" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Append
            | "RegexpMatch" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `RegexpMatch
            | "NotMatch" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `NotMatch
            | "Range" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Range
            | "RangeInclusive" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `RangeInclusive
            | "NotNullPostfix" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `NotNullPostfix
            | "Length" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Length
            | "Elvis" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Elvis
            | "Nullish" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Nullish
            | "In" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `In
            | "NotIn" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `NotIn
            | "Is" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Is
            | "NotIs" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `NotIs
            | "Background" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Background
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "Plus" ->
              `Plus
            | "Minus" ->
              `Minus
            | "Mult" ->
              `Mult
            | "Div" ->
              `Div
            | "Mod" ->
              `Mod
            | "Pow" ->
              `Pow
            | "FloorDiv" ->
              `FloorDiv
            | "MatMult" ->
              `MatMult
            | "LSL" ->
              `LSL
            | "LSR" ->
              `LSR
            | "ASR" ->
              `ASR
            | "BitOr" ->
              `BitOr
            | "BitXor" ->
              `BitXor
            | "BitAnd" ->
              `BitAnd
            | "BitNot" ->
              `BitNot
            | "BitClear" ->
              `BitClear
            | "And" ->
              `And
            | "Or" ->
              `Or
            | "Xor" ->
              `Xor
            | "Pipe" ->
              `Pipe
            | "Not" ->
              `Not
            | "Eq" ->
              `Eq
            | "NotEq" ->
              `NotEq
            | "PhysEq" ->
              `PhysEq
            | "NotPhysEq" ->
              `NotPhysEq
            | "Lt" ->
              `Lt
            | "LtE" ->
              `LtE
            | "Gt" ->
              `Gt
            | "GtE" ->
              `GtE
            | "Cmp" ->
              `Cmp
            | "Concat" ->
              `Concat
            | "Append" ->
              `Append
            | "RegexpMatch" ->
              `RegexpMatch
            | "NotMatch" ->
              `NotMatch
            | "Range" ->
              `Range
            | "RangeInclusive" ->
              `RangeInclusive
            | "NotNullPostfix" ->
              `NotNullPostfix
            | "Length" ->
              `Length
            | "Elvis" ->
              `Elvis
            | "Nullish" ->
              `Nullish
            | "In" ->
              `In
            | "NotIn" ->
              `NotIn
            | "Is" ->
              `Is
            | "NotIs" ->
              `NotIs
            | "Background" ->
              `Background
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let operator_of_string s =
  read_operator (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_prefix_postfix = (
  fun ob x ->
    match x with
      | `Prefix -> Bi_outbuf.add_string ob "\"Prefix\""
      | `Postfix -> Bi_outbuf.add_string ob "\"Postfix\""
)
let string_of_prefix_postfix ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_prefix_postfix ob x;
  Bi_outbuf.contents ob
let read_prefix_postfix = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "Prefix" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Prefix
            | "Postfix" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Postfix
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "Prefix" ->
              `Prefix
            | "Postfix" ->
              `Postfix
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let prefix_postfix_of_string s =
  read_prefix_postfix (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_sid = (
  Yojson.Safe.write_int
)
let string_of_sid ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_sid ob x;
  Bi_outbuf.contents ob
let read_sid = (
  Atdgen_runtime.Oj_run.read_int
)
let sid_of_string s =
  read_sid (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_special = (
  fun ob x ->
    match x with
      | `This -> Bi_outbuf.add_string ob "\"This\""
      | `Super -> Bi_outbuf.add_string ob "\"Super\""
      | `Self -> Bi_outbuf.add_string ob "\"Self\""
      | `Parent -> Bi_outbuf.add_string ob "\"Parent\""
      | `NextArrayIndex -> Bi_outbuf.add_string ob "\"NextArrayIndex\""
      | `Eval -> Bi_outbuf.add_string ob "\"Eval\""
      | `Typeof -> Bi_outbuf.add_string ob "\"Typeof\""
      | `Instanceof -> Bi_outbuf.add_string ob "\"Instanceof\""
      | `Sizeof -> Bi_outbuf.add_string ob "\"Sizeof\""
      | `Defined -> Bi_outbuf.add_string ob "\"Defined\""
      | `New -> Bi_outbuf.add_string ob "\"New\""
      | `ConcatString x ->
        Bi_outbuf.add_string ob "[\"ConcatString\",";
        (
          write_concat_string_kind
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `EncodedString x ->
        Bi_outbuf.add_string ob "[\"EncodedString\",";
        (
          Yojson.Safe.write_string
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Spread -> Bi_outbuf.add_string ob "\"Spread\""
      | `HashSplat -> Bi_outbuf.add_string ob "\"HashSplat\""
      | `ForOf -> Bi_outbuf.add_string ob "\"ForOf\""
      | `Op x ->
        Bi_outbuf.add_string ob "[\"Op\",";
        (
          write_operator
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `IncrDecr x ->
        Bi_outbuf.add_string ob "[\"IncrDecr\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_incr_decr
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_prefix_postfix
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
let string_of_special ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_special ob x;
  Bi_outbuf.contents ob
let read_special = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "This" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `This
            | "Super" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Super
            | "Self" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Self
            | "Parent" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Parent
            | "NextArrayIndex" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `NextArrayIndex
            | "Eval" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Eval
            | "Typeof" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Typeof
            | "Instanceof" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Instanceof
            | "Sizeof" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Sizeof
            | "Defined" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Defined
            | "New" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `New
            | "ConcatString" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_concat_string_kind
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ConcatString x
            | "EncodedString" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `EncodedString x
            | "Spread" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Spread
            | "HashSplat" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `HashSplat
            | "ForOf" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ForOf
            | "Op" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_operator
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Op x
            | "IncrDecr" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_incr_decr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_prefix_postfix
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `IncrDecr x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "This" ->
              `This
            | "Super" ->
              `Super
            | "Self" ->
              `Self
            | "Parent" ->
              `Parent
            | "NextArrayIndex" ->
              `NextArrayIndex
            | "Eval" ->
              `Eval
            | "Typeof" ->
              `Typeof
            | "Instanceof" ->
              `Instanceof
            | "Sizeof" ->
              `Sizeof
            | "Defined" ->
              `Defined
            | "New" ->
              `New
            | "Spread" ->
              `Spread
            | "HashSplat" ->
              `HashSplat
            | "ForOf" ->
              `ForOf
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "ConcatString" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_concat_string_kind
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `ConcatString x
            | "EncodedString" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `EncodedString x
            | "Op" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_operator
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Op x
            | "IncrDecr" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_incr_decr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_prefix_postfix
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `IncrDecr x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let special_of_string s =
  read_special (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_token_location : _ -> token_location -> _ = (
  fun ob (x : token_location) ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"str\":";
    (
      Yojson.Safe.write_string
    )
      ob x.str;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"charpos\":";
    (
      Yojson.Safe.write_int
    )
      ob x.charpos;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"line\":";
    (
      Yojson.Safe.write_int
    )
      ob x.line;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"column\":";
    (
      Yojson.Safe.write_int
    )
      ob x.column;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"filename\":";
    (
      Yojson.Safe.write_string
    )
      ob x.filename;
    Bi_outbuf.add_char ob '}';
)
let string_of_token_location ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_token_location ob x;
  Bi_outbuf.contents ob
let read_token_location = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_str = ref (None) in
    let field_charpos = ref (None) in
    let field_line = ref (None) in
    let field_column = ref (None) in
    let field_filename = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          match len with
            | 3 -> (
                if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 'r' then (
                  0
                )
                else (
                  -1
                )
              )
            | 4 -> (
                if String.unsafe_get s pos = 'l' && String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'e' then (
                  2
                )
                else (
                  -1
                )
              )
            | 6 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'u' && String.unsafe_get s (pos+4) = 'm' && String.unsafe_get s (pos+5) = 'n' then (
                  3
                )
                else (
                  -1
                )
              )
            | 7 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'h' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 'p' && String.unsafe_get s (pos+5) = 'o' && String.unsafe_get s (pos+6) = 's' then (
                  1
                )
                else (
                  -1
                )
              )
            | 8 -> (
                if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'n' && String.unsafe_get s (pos+5) = 'a' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'e' then (
                  4
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_str := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 1 ->
            field_charpos := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 2 ->
            field_line := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 3 ->
            field_column := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 4 ->
            field_filename := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            match len with
              | 3 -> (
                  if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 'r' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 4 -> (
                  if String.unsafe_get s pos = 'l' && String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'e' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | 6 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'u' && String.unsafe_get s (pos+4) = 'm' && String.unsafe_get s (pos+5) = 'n' then (
                    3
                  )
                  else (
                    -1
                  )
                )
              | 7 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'h' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 'p' && String.unsafe_get s (pos+5) = 'o' && String.unsafe_get s (pos+6) = 's' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 8 -> (
                  if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'n' && String.unsafe_get s (pos+5) = 'a' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'e' then (
                    4
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_str := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 1 ->
              field_charpos := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 2 ->
              field_line := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 3 ->
              field_column := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 4 ->
              field_filename := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            str = (match !field_str with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "str");
            charpos = (match !field_charpos with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "charpos");
            line = (match !field_line with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "line");
            column = (match !field_column with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "column");
            filename = (match !field_filename with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "filename");
          }
         : token_location)
      )
)
let token_location_of_string s =
  read_token_location (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_token = (
  fun ob x ->
    match x with
      | `OriginTok x ->
        Bi_outbuf.add_string ob "[\"OriginTok\",";
        (
          write_token_location
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `FakeTok x ->
        Bi_outbuf.add_string ob "[\"FakeTok\",";
        (
          Yojson.Safe.write_string
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
let string_of_token ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_token ob x;
  Bi_outbuf.contents ob
let read_token = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "OriginTok" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_token_location
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `OriginTok x
            | "FakeTok" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `FakeTok x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "OriginTok" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_token_location
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `OriginTok x
            | "FakeTok" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `FakeTok x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let token_of_string s =
  read_token (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_tok = (
  write_token
)
let string_of_tok ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_tok ob x;
  Bi_outbuf.contents ob
let read_tok = (
  read_token
)
let tok_of_string s =
  read_tok (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__1 = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _ = x in
    (
      Yojson.Safe.write_string
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
let string_of__1 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__1 ob x;
  Bi_outbuf.contents ob
let read__1 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            Atdgen_runtime.Oj_run.read_string
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
)
let _1_of_string s =
  read__1 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__12 = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _ = x in
    (
      write_special
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
let string_of__12 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__12 ob x;
  Bi_outbuf.contents ob
let read__12 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read_special
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
)
let _12_of_string s =
  read__12 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__14 = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _ = x in
    (
      write_operator
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
let string_of__14 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__14 ob x;
  Bi_outbuf.contents ob
let read__14 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read_operator
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
)
let _14_of_string s =
  read__14 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__20 = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _ = x in
    (
      Yojson.Safe.write_bool
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
let string_of__20 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__20 ob x;
  Bi_outbuf.contents ob
let read__20 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            Atdgen_runtime.Oj_run.read_bool
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
)
let _20_of_string s =
  read__20 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__22 = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _ = x in
    (
      write__21
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
let string_of__22 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__22 ob x;
  Bi_outbuf.contents ob
let read__22 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read__21
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
)
let _22_of_string s =
  read__22 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__24 = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _ = x in
    (
      write__23
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
let string_of__24 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__24 ob x;
  Bi_outbuf.contents ob
let read__24 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read__23
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
)
let _24_of_string s =
  read__24 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__36 = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _ = x in
    (
      Yojson.Safe.write_int
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
let string_of__36 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__36 ob x;
  Bi_outbuf.contents ob
let read__36 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            Atdgen_runtime.Oj_run.read_int
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
)
let _36_of_string s =
  read__36 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__48 = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _ = x in
    (
      write_keyword_attribute
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
let string_of__48 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__48 ob x;
  Bi_outbuf.contents ob
let read__48 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read_keyword_attribute
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
)
let _48_of_string s =
  read__48 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__52 = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _ = x in
    (
      write_function_kind
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
let string_of__52 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__52 ob x;
  Bi_outbuf.contents ob
let read__52 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read_function_kind
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
)
let _52_of_string s =
  read__52 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__55 = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _ = x in
    (
      write_class_kind
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
let string_of__55 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__55 ob x;
  Bi_outbuf.contents ob
let read__55 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read_class_kind
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
)
let _55_of_string s =
  read__55 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_ident = (
  write__1
)
let string_of_ident ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_ident ob x;
  Bi_outbuf.contents ob
let read_ident = (
  read__1
)
let ident_of_string s =
  read_ident (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__2 = (
  Atdgen_runtime.Oj_run.write_list (
    write_ident
  )
)
let string_of__2 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__2 ob x;
  Bi_outbuf.contents ob
let read__2 = (
  Atdgen_runtime.Oj_run.read_list (
    read_ident
  )
)
let _2_of_string s =
  read__2 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__53 = (
  Atdgen_runtime.Oj_run.write_std_option (
    write_ident
  )
)
let string_of__53 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__53 ob x;
  Bi_outbuf.contents ob
let read__53 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "None" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (None : _ option)
            | "Some" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_ident
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "None" ->
              (None : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Some" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_ident
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let _53_of_string s =
  read__53 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_dotted_ident = (
  write__2
)
let string_of_dotted_ident ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_dotted_ident ob x;
  Bi_outbuf.contents ob
let read_dotted_ident = (
  read__2
)
let dotted_ident_of_string s =
  read_dotted_ident (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__56 = (
  Atdgen_runtime.Oj_run.write_std_option (
    write_dotted_ident
  )
)
let string_of__56 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__56 ob x;
  Bi_outbuf.contents ob
let read__56 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "None" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (None : _ option)
            | "Some" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_dotted_ident
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "None" ->
              (None : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Some" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_dotted_ident
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let _56_of_string s =
  read__56 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_label = (
  write_ident
)
let string_of_label ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_label ob x;
  Bi_outbuf.contents ob
let read_label = (
  read_ident
)
let label_of_string s =
  read_label (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_literal = (
  fun ob x ->
    match x with
      | `Bool x ->
        Bi_outbuf.add_string ob "[\"Bool\",";
        (
          write__20
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Int x ->
        Bi_outbuf.add_string ob "[\"Int\",";
        (
          write__22
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Float x ->
        Bi_outbuf.add_string ob "[\"Float\",";
        (
          write__24
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Char x ->
        Bi_outbuf.add_string ob "[\"Char\",";
        (
          write__1
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `String x ->
        Bi_outbuf.add_string ob "[\"String\",";
        (
          write__1
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Regexp x ->
        Bi_outbuf.add_string ob "[\"Regexp\",";
        (
          write__1
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Unit x ->
        Bi_outbuf.add_string ob "[\"Unit\",";
        (
          write_tok
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Null x ->
        Bi_outbuf.add_string ob "[\"Null\",";
        (
          write_tok
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Undefined x ->
        Bi_outbuf.add_string ob "[\"Undefined\",";
        (
          write_tok
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Imag x ->
        Bi_outbuf.add_string ob "[\"Imag\",";
        (
          write__1
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Ratio x ->
        Bi_outbuf.add_string ob "[\"Ratio\",";
        (
          write__1
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Atom x ->
        Bi_outbuf.add_string ob "[\"Atom\",";
        (
          write__1
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
let string_of_literal ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_literal ob x;
  Bi_outbuf.contents ob
let read_literal = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "Bool" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__20
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Bool x
            | "Int" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__22
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Int x
            | "Float" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__24
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Float x
            | "Char" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__1
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Char x
            | "String" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__1
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `String x
            | "Regexp" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__1
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Regexp x
            | "Unit" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Unit x
            | "Null" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Null x
            | "Undefined" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Undefined x
            | "Imag" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__1
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Imag x
            | "Ratio" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__1
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Ratio x
            | "Atom" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__1
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Atom x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Bool" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__20
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Bool x
            | "Int" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__22
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Int x
            | "Float" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__24
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Float x
            | "Char" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__1
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Char x
            | "String" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__1
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `String x
            | "Regexp" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__1
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Regexp x
            | "Unit" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Unit x
            | "Null" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Null x
            | "Undefined" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Undefined x
            | "Imag" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__1
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Imag x
            | "Ratio" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__1
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Ratio x
            | "Atom" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__1
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Atom x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let literal_of_string s =
  read_literal (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_constness = (
  fun ob x ->
    match x with
      | `Lit x ->
        Bi_outbuf.add_string ob "[\"Lit\",";
        (
          write_literal
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Cst x ->
        Bi_outbuf.add_string ob "[\"Cst\",";
        (
          write_const_type
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `NotCst -> Bi_outbuf.add_string ob "\"NotCst\""
)
let string_of_constness ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_constness ob x;
  Bi_outbuf.contents ob
let read_constness = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "Lit" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_literal
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Lit x
            | "Cst" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_const_type
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Cst x
            | "NotCst" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `NotCst
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "NotCst" ->
              `NotCst
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Lit" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_literal
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Lit x
            | "Cst" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_const_type
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Cst x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let constness_of_string s =
  read_constness (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__7 = (
  Atdgen_runtime.Oj_run.write_std_option (
    write_constness
  )
)
let string_of__7 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__7 ob x;
  Bi_outbuf.contents ob
let read__7 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "None" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (None : _ option)
            | "Some" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_constness
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "None" ->
              (None : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Some" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_constness
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let _7_of_string s =
  read__7 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_module_name = (
  fun ob x ->
    match x with
      | `DottedName x ->
        Bi_outbuf.add_string ob "[\"DottedName\",";
        (
          write_dotted_ident
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `FileName x ->
        Bi_outbuf.add_string ob "[\"FileName\",";
        (
          write__1
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
let string_of_module_name ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_module_name ob x;
  Bi_outbuf.contents ob
let read_module_name = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "DottedName" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_dotted_ident
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `DottedName x
            | "FileName" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__1
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `FileName x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "DottedName" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_dotted_ident
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `DottedName x
            | "FileName" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__1
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `FileName x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let module_name_of_string s =
  read_module_name (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_resolved_name_kind = (
  fun ob x ->
    match x with
      | `Global -> Bi_outbuf.add_string ob "\"Global\""
      | `Local -> Bi_outbuf.add_string ob "\"Local\""
      | `Param -> Bi_outbuf.add_string ob "\"Param\""
      | `EnclosedVar -> Bi_outbuf.add_string ob "\"EnclosedVar\""
      | `ImportedEntity x ->
        Bi_outbuf.add_string ob "[\"ImportedEntity\",";
        (
          write_dotted_ident
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `ImportedModule x ->
        Bi_outbuf.add_string ob "[\"ImportedModule\",";
        (
          write_module_name
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `TypeName -> Bi_outbuf.add_string ob "\"TypeName\""
      | `Macro -> Bi_outbuf.add_string ob "\"Macro\""
      | `EnumConstant -> Bi_outbuf.add_string ob "\"EnumConstant\""
)
let string_of_resolved_name_kind ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_resolved_name_kind ob x;
  Bi_outbuf.contents ob
let read_resolved_name_kind = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "Global" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Global
            | "Local" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Local
            | "Param" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Param
            | "EnclosedVar" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `EnclosedVar
            | "ImportedEntity" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_dotted_ident
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ImportedEntity x
            | "ImportedModule" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_module_name
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ImportedModule x
            | "TypeName" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `TypeName
            | "Macro" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Macro
            | "EnumConstant" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `EnumConstant
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "Global" ->
              `Global
            | "Local" ->
              `Local
            | "Param" ->
              `Param
            | "EnclosedVar" ->
              `EnclosedVar
            | "TypeName" ->
              `TypeName
            | "Macro" ->
              `Macro
            | "EnumConstant" ->
              `EnumConstant
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "ImportedEntity" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_dotted_ident
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `ImportedEntity x
            | "ImportedModule" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_module_name
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `ImportedModule x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let resolved_name_kind_of_string s =
  read_resolved_name_kind (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_resolved_name = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _ = x in
    (
      write_resolved_name_kind
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x = x in
    (
      write_sid
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
let string_of_resolved_name ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_resolved_name ob x;
  Bi_outbuf.contents ob
let read_resolved_name = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read_resolved_name_kind
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read_sid
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
)
let resolved_name_of_string s =
  read_resolved_name (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__5 = (
  Atdgen_runtime.Oj_run.write_std_option (
    write_resolved_name
  )
)
let string_of__5 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__5 ob x;
  Bi_outbuf.contents ob
let read__5 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "None" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (None : _ option)
            | "Some" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_resolved_name
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "None" ->
              (None : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Some" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_resolved_name
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let _5_of_string s =
  read__5 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_sc = (
  write_tok
)
let string_of_sc ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_sc ob x;
  Bi_outbuf.contents ob
let read_sc = (
  read_tok
)
let sc_of_string s =
  read_sc (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_xml_kind = (
  fun ob x ->
    match x with
      | `XmlClassic x ->
        Bi_outbuf.add_string ob "[\"XmlClassic\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _, _ = x in
            (
              write_ident
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, _, x = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `XmlSingleton x ->
        Bi_outbuf.add_string ob "[\"XmlSingleton\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _ = x in
            (
              write_ident
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `XmlFragment x ->
        Bi_outbuf.add_string ob "[\"XmlFragment\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
let string_of_xml_kind ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_xml_kind ob x;
  Bi_outbuf.contents ob
let read_xml_kind = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "XmlClassic" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x3 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2, x3)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2; 3 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `XmlClassic x
            | "XmlSingleton" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `XmlSingleton x
            | "XmlFragment" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `XmlFragment x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "XmlClassic" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x3 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2, x3)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2; 3 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `XmlClassic x
            | "XmlSingleton" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `XmlSingleton x
            | "XmlFragment" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `XmlFragment x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let xml_kind_of_string s =
  read_xml_kind (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let rec write__10 ob x = (
  Atdgen_runtime.Oj_run.write_list (
    write_field
  )
) ob x
and string_of__10 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__10 ob x;
  Bi_outbuf.contents ob
and write__11 = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _, _ = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x, _ = x in
    (
      write__10
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, _, x = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
and string_of__11 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__11 ob x;
  Bi_outbuf.contents ob
and write__13 = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _, _ = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x, _ = x in
    (
      write_arguments
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, _, x = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
and string_of__13 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__13 ob x;
  Bi_outbuf.contents ob
and write__15 = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _, _ = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x, _ = x in
    (
      write_expr
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, _, x = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
and string_of__15 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__15 ob x;
  Bi_outbuf.contents ob
and write__16 ob x = (
  Atdgen_runtime.Oj_run.write_std_option (
    write_expr
  )
) ob x
and string_of__16 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__16 ob x;
  Bi_outbuf.contents ob
and write__17 = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _, _ = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x, _ = x in
    (
      fun ob x ->
        Bi_outbuf.add_char ob '[';
        (let x, _, _ = x in
        (
          write__16
        ) ob x
        );
        Bi_outbuf.add_char ob ',';
        (let _, x, _ = x in
        (
          write__16
        ) ob x
        );
        Bi_outbuf.add_char ob ',';
        (let _, _, x = x in
        (
          write__16
        ) ob x
        );
        Bi_outbuf.add_char ob ']';
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, _, x = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
and string_of__17 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__17 ob x;
  Bi_outbuf.contents ob
and write__18 ob x = (
  Atdgen_runtime.Oj_run.write_list (
    write_action
  )
) ob x
and string_of__18 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__18 ob x;
  Bi_outbuf.contents ob
and write__19 ob x = (
  Atdgen_runtime.Oj_run.write_list (
    write_any
  )
) ob x
and string_of__19 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__19 ob x;
  Bi_outbuf.contents ob
and write__25 ob x = (
  Atdgen_runtime.Oj_run.write_list (
    write_xml_attribute
  )
) ob x
and string_of__25 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__25 ob x;
  Bi_outbuf.contents ob
and write__26 ob x = (
  Atdgen_runtime.Oj_run.write_list (
    write_xml_body
  )
) ob x
and string_of__26 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__26 ob x;
  Bi_outbuf.contents ob
and write__27 = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _, _ = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x, _ = x in
    (
      write__16
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, _, x = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
and string_of__27 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__27 ob x;
  Bi_outbuf.contents ob
and write__28 ob x = (
  Atdgen_runtime.Oj_run.write_list (
    write_argument
  )
) ob x
and string_of__28 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__28 ob x;
  Bi_outbuf.contents ob
and write__29 ob x = (
  Atdgen_runtime.Oj_run.write_list (
    write_stmt
  )
) ob x
and string_of__29 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__29 ob x;
  Bi_outbuf.contents ob
and write__3 ob x = (
  Atdgen_runtime.Oj_run.write_std_option (
    write_qualifier
  )
) ob x
and string_of__3 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__3 ob x;
  Bi_outbuf.contents ob
and write__30 = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _, _ = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x, _ = x in
    (
      write__29
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, _, x = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
and string_of__30 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__30 ob x;
  Bi_outbuf.contents ob
and write__31 ob x = (
  Atdgen_runtime.Oj_run.write_std_option (
    write_stmt
  )
) ob x
and string_of__31 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__31 ob x;
  Bi_outbuf.contents ob
and write__32 ob x = (
  Atdgen_runtime.Oj_run.write_list (
    write_case_and_body
  )
) ob x
and string_of__32 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__32 ob x;
  Bi_outbuf.contents ob
and write__33 ob x = (
  Atdgen_runtime.Oj_run.write_list (
    write_catch
  )
) ob x
and string_of__33 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__33 ob x;
  Bi_outbuf.contents ob
and write__34 ob x = (
  Atdgen_runtime.Oj_run.write_std_option (
    write_finally
  )
) ob x
and string_of__34 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__34 ob x;
  Bi_outbuf.contents ob
and write__35 ob x = (
  Atdgen_runtime.Oj_run.write_list (
    write_case
  )
) ob x
and string_of__35 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__35 ob x;
  Bi_outbuf.contents ob
and write__37 ob x = (
  Atdgen_runtime.Oj_run.write_list (
    write_for_var_or_expr
  )
) ob x
and string_of__37 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__37 ob x;
  Bi_outbuf.contents ob
and write__38 ob x = (
  Atdgen_runtime.Oj_run.write_list (
    write_pattern
  )
) ob x
and string_of__38 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__38 ob x;
  Bi_outbuf.contents ob
and write__39 ob x = (
  Atdgen_runtime.Oj_run.write_list (
    fun ob x ->
      Bi_outbuf.add_char ob '[';
      (let x, _ = x in
      (
        write_dotted_ident
      ) ob x
      );
      Bi_outbuf.add_char ob ',';
      (let _, x = x in
      (
        write_pattern
      ) ob x
      );
      Bi_outbuf.add_char ob ']';
  )
) ob x
and string_of__39 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__39 ob x;
  Bi_outbuf.contents ob
and write__4 ob x = (
  Atdgen_runtime.Oj_run.write_std_option (
    write_type_arguments
  )
) ob x
and string_of__4 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__4 ob x;
  Bi_outbuf.contents ob
and write__40 = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _, _ = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x, _ = x in
    (
      write__39
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, _, x = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
and string_of__40 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__40 ob x;
  Bi_outbuf.contents ob
and write__41 = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _, _ = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x, _ = x in
    (
      write__38
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, _, x = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
and string_of__41 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__41 ob x;
  Bi_outbuf.contents ob
and write__42 ob x = (
  Atdgen_runtime.Oj_run.write_std_option (
    fun ob x ->
      Bi_outbuf.add_char ob '[';
      (let x, _ = x in
      (
        write_ident
      ) ob x
      );
      Bi_outbuf.add_char ob ',';
      (let _, x = x in
      (
        write_id_info
      ) ob x
      );
      Bi_outbuf.add_char ob ']';
  )
) ob x
and string_of__42 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__42 ob x;
  Bi_outbuf.contents ob
and write__43 ob x = (
  Atdgen_runtime.Oj_run.write_list (
    write_parameter
  )
) ob x
and string_of__43 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__43 ob x;
  Bi_outbuf.contents ob
and write__44 ob x = (
  Atdgen_runtime.Oj_run.write_list (
    write_type_
  )
) ob x
and string_of__44 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__44 ob x;
  Bi_outbuf.contents ob
and write__45 = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _, _ = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x, _ = x in
    (
      write__44
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, _, x = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
and string_of__45 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__45 ob x;
  Bi_outbuf.contents ob
and write__46 ob x = (
  Atdgen_runtime.Oj_run.write_list (
    write_type_argument
  )
) ob x
and string_of__46 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__46 ob x;
  Bi_outbuf.contents ob
and write__47 ob x = (
  Atdgen_runtime.Oj_run.write_std_option (
    fun ob x ->
      Bi_outbuf.add_char ob '[';
      (let x, _ = x in
      (
        write__20
      ) ob x
      );
      Bi_outbuf.add_char ob ',';
      (let _, x = x in
      (
        write_type_
      ) ob x
      );
      Bi_outbuf.add_char ob ']';
  )
) ob x
and string_of__47 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__47 ob x;
  Bi_outbuf.contents ob
and write__49 ob x = (
  Atdgen_runtime.Oj_run.write_list (
    write_attribute
  )
) ob x
and string_of__49 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__49 ob x;
  Bi_outbuf.contents ob
and write__50 ob x = (
  Atdgen_runtime.Oj_run.write_list (
    write_type_parameter
  )
) ob x
and string_of__50 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__50 ob x;
  Bi_outbuf.contents ob
and write__51 ob x = (
  Atdgen_runtime.Oj_run.write_list (
    write_type_parameter_constraint
  )
) ob x
and string_of__51 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__51 ob x;
  Bi_outbuf.contents ob
and write__54 ob x = (
  Atdgen_runtime.Oj_run.write_list (
    write_or_type_element
  )
) ob x
and string_of__54 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__54 ob x;
  Bi_outbuf.contents ob
and write__57 ob x = (
  Atdgen_runtime.Oj_run.write_list (
    write_item
  )
) ob x
and string_of__57 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__57 ob x;
  Bi_outbuf.contents ob
and write__58 ob x = (
  Atdgen_runtime.Oj_run.write_std_option (
    write_alias
  )
) ob x
and string_of__58 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__58 ob x;
  Bi_outbuf.contents ob
and write__6 ob x = (
  Atdgen_runtime.Oj_run.write_std_option (
    write_type_
  )
) ob x
and string_of__6 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__6 ob x;
  Bi_outbuf.contents ob
and write__8 ob x = (
  Atdgen_runtime.Oj_run.write_list (
    write_expr
  )
) ob x
and string_of__8 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__8 ob x;
  Bi_outbuf.contents ob
and write__9 = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _, _ = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x, _ = x in
    (
      write__8
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, _, x = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
and string_of__9 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__9 ob x;
  Bi_outbuf.contents ob
and write_action = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _ = x in
    (
      write_pattern
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x = x in
    (
      write_expr
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
and string_of_action ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_action ob x;
  Bi_outbuf.contents ob
and write_alias = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _ = x in
    (
      write_ident
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x = x in
    (
      write_id_info
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
and string_of_alias ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_alias ob x;
  Bi_outbuf.contents ob
and write_any = (
  fun ob x ->
    match x with
      | `E x ->
        Bi_outbuf.add_string ob "[\"E\",";
        (
          write_expr
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `S x ->
        Bi_outbuf.add_string ob "[\"S\",";
        (
          write_stmt
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Ss x ->
        Bi_outbuf.add_string ob "[\"Ss\",";
        (
          write__29
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `T x ->
        Bi_outbuf.add_string ob "[\"T\",";
        (
          write_type_
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `P x ->
        Bi_outbuf.add_string ob "[\"P\",";
        (
          write_pattern
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `At x ->
        Bi_outbuf.add_string ob "[\"At\",";
        (
          write_attribute
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Fld x ->
        Bi_outbuf.add_string ob "[\"Fld\",";
        (
          write_field
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Args x ->
        Bi_outbuf.add_string ob "[\"Args\",";
        (
          write__28
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `I x ->
        Bi_outbuf.add_string ob "[\"I\",";
        (
          write_ident
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Str x ->
        Bi_outbuf.add_string ob "[\"Str\",";
        (
          write__1
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Tk x ->
        Bi_outbuf.add_string ob "[\"Tk\",";
        (
          write_tok
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `TodoK x ->
        Bi_outbuf.add_string ob "[\"TodoK\",";
        (
          write__1
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
and string_of_any ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_any ob x;
  Bi_outbuf.contents ob
and write_argument = (
  fun ob x ->
    match x with
      | `Arg x ->
        Bi_outbuf.add_string ob "[\"Arg\",";
        (
          write_expr
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `ArgKwd x ->
        Bi_outbuf.add_string ob "[\"ArgKwd\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_ident
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `ArgKwdOptional x ->
        Bi_outbuf.add_string ob "[\"ArgKwdOptional\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_ident
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `ArgType x ->
        Bi_outbuf.add_string ob "[\"ArgType\",";
        (
          write_type_
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `ArgOther x ->
        Bi_outbuf.add_string ob "[\"ArgOther\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              Yojson.Safe.write_string
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__19
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
and string_of_argument ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_argument ob x;
  Bi_outbuf.contents ob
and write_arguments ob x = (
  write__28
) ob x
and string_of_arguments ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_arguments ob x;
  Bi_outbuf.contents ob
and write_attribute = (
  fun ob x ->
    match x with
      | `KeywordAttr x ->
        Bi_outbuf.add_string ob "[\"KeywordAttr\",";
        (
          write__48
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `NamedAttr x ->
        Bi_outbuf.add_string ob "[\"NamedAttr\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _ = x in
            (
              write_name
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x = x in
            (
              write__13
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `OtherAttribute x ->
        Bi_outbuf.add_string ob "[\"OtherAttribute\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              Yojson.Safe.write_string
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__19
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
and string_of_attribute ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_attribute ob x;
  Bi_outbuf.contents ob
and write_case = (
  fun ob x ->
    match x with
      | `Case x ->
        Bi_outbuf.add_string ob "[\"Case\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_pattern
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Default x ->
        Bi_outbuf.add_string ob "[\"Default\",";
        (
          write_tok
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `CaseEqualExpr x ->
        Bi_outbuf.add_string ob "[\"CaseEqualExpr\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
and string_of_case ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_case ob x;
  Bi_outbuf.contents ob
and write_case_and_body = (
  fun ob x ->
    match x with
      | `CasesAndBody x ->
        Bi_outbuf.add_string ob "[\"CasesAndBody\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write__35
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_stmt
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `CaseEllipsis x ->
        Bi_outbuf.add_string ob "[\"CaseEllipsis\",";
        (
          write_tok
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
and string_of_case_and_body ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_case_and_body ob x;
  Bi_outbuf.contents ob
and write_catch = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _, _ = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x, _ = x in
    (
      write_pattern
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, _, x = x in
    (
      write_stmt
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
and string_of_catch ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_catch ob x;
  Bi_outbuf.contents ob
and write_class_definition : _ -> class_definition -> _ = (
  fun ob (x : class_definition) ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"ckind\":";
    (
      write__55
    )
      ob x.ckind;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"cextends\":";
    (
      write__44
    )
      ob x.cextends;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"cimplements\":";
    (
      write__44
    )
      ob x.cimplements;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"cmixins\":";
    (
      write__44
    )
      ob x.cmixins;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"cparams\":";
    (
      write_parameters
    )
      ob x.cparams;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"cbody\":";
    (
      write__11
    )
      ob x.cbody;
    Bi_outbuf.add_char ob '}';
)
and string_of_class_definition ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_class_definition ob x;
  Bi_outbuf.contents ob
and write_definition = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _ = x in
    (
      write_entity
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x = x in
    (
      write_definition_kind
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
and string_of_definition ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_definition ob x;
  Bi_outbuf.contents ob
and write_definition_kind = (
  fun ob x ->
    match x with
      | `FuncDef x ->
        Bi_outbuf.add_string ob "[\"FuncDef\",";
        (
          write_function_definition
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `VarDef x ->
        Bi_outbuf.add_string ob "[\"VarDef\",";
        (
          write_variable_definition
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `FieldDefColon x ->
        Bi_outbuf.add_string ob "[\"FieldDefColon\",";
        (
          write_variable_definition
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `ClassDef x ->
        Bi_outbuf.add_string ob "[\"ClassDef\",";
        (
          write_class_definition
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `TypeDef x ->
        Bi_outbuf.add_string ob "[\"TypeDef\",";
        (
          write_type_definition
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `ModuleDef x ->
        Bi_outbuf.add_string ob "[\"ModuleDef\",";
        (
          write_module_definition
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `MacroDef x ->
        Bi_outbuf.add_string ob "[\"MacroDef\",";
        (
          write_macro_definition
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Signature x ->
        Bi_outbuf.add_string ob "[\"Signature\",";
        (
          write_type_
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `UseOuterDecl x ->
        Bi_outbuf.add_string ob "[\"UseOuterDecl\",";
        (
          write_tok
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `OtherDef x ->
        Bi_outbuf.add_string ob "[\"OtherDef\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              Yojson.Safe.write_string
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__19
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
and string_of_definition_kind ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_definition_kind ob x;
  Bi_outbuf.contents ob
and write_directive = (
  fun ob x ->
    match x with
      | `ImportFrom x ->
        Bi_outbuf.add_string ob "[\"ImportFrom\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _, _ = x in
            (
              write_module_name
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x, _ = x in
            (
              write_ident
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, _, x = x in
            (
              write__58
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `ImportAs x ->
        Bi_outbuf.add_string ob "[\"ImportAs\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _ = x in
            (
              write_module_name
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x = x in
            (
              write__58
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `ImportAll x ->
        Bi_outbuf.add_string ob "[\"ImportAll\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _ = x in
            (
              write_module_name
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Package x ->
        Bi_outbuf.add_string ob "[\"Package\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_dotted_ident
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `PackageEnd x ->
        Bi_outbuf.add_string ob "[\"PackageEnd\",";
        (
          write_tok
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Pragma x ->
        Bi_outbuf.add_string ob "[\"Pragma\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_ident
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__19
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `OtherDirective x ->
        Bi_outbuf.add_string ob "[\"OtherDirective\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              Yojson.Safe.write_string
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__19
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
and string_of_directive ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_directive ob x;
  Bi_outbuf.contents ob
and write_entity : _ -> entity -> _ = (
  fun ob (x : entity) ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"name\":";
    (
      write_name_or_dynamic
    )
      ob x.name;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"attrs\":";
    (
      write__49
    )
      ob x.attrs;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"tparams\":";
    (
      write__50
    )
      ob x.tparams;
    Bi_outbuf.add_char ob '}';
)
and string_of_entity ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_entity ob x;
  Bi_outbuf.contents ob
and write_expr = (
  fun ob x ->
    match x with
      | `L x ->
        Bi_outbuf.add_string ob "[\"L\",";
        (
          write_literal
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Container x ->
        Bi_outbuf.add_string ob "[\"Container\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_container_operator
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__9
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Tuple x ->
        Bi_outbuf.add_string ob "[\"Tuple\",";
        (
          write__9
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Record x ->
        Bi_outbuf.add_string ob "[\"Record\",";
        (
          write__11
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Constructor x ->
        Bi_outbuf.add_string ob "[\"Constructor\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_dotted_ident
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__8
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `N x ->
        Bi_outbuf.add_string ob "[\"N\",";
        (
          write_name
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `IdSpecial x ->
        Bi_outbuf.add_string ob "[\"IdSpecial\",";
        (
          write__12
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Call x ->
        Bi_outbuf.add_string ob "[\"Call\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__13
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Xml x ->
        Bi_outbuf.add_string ob "[\"Xml\",";
        (
          write_xml
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Assign x ->
        Bi_outbuf.add_string ob "[\"Assign\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _ = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `AssignOp x ->
        Bi_outbuf.add_string ob "[\"AssignOp\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _ = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _ = x in
            (
              write__14
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `LetPattern x ->
        Bi_outbuf.add_string ob "[\"LetPattern\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_pattern
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `DotAccess x ->
        Bi_outbuf.add_string ob "[\"DotAccess\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _ = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x = x in
            (
              write_name_or_dynamic
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `ArrayAccess x ->
        Bi_outbuf.add_string ob "[\"ArrayAccess\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__15
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `SliceAccess x ->
        Bi_outbuf.add_string ob "[\"SliceAccess\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__17
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Lambda x ->
        Bi_outbuf.add_string ob "[\"Lambda\",";
        (
          write_function_definition
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `AnonClass x ->
        Bi_outbuf.add_string ob "[\"AnonClass\",";
        (
          write_class_definition
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Conditional x ->
        Bi_outbuf.add_string ob "[\"Conditional\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _ = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _ = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `MatchPattern x ->
        Bi_outbuf.add_string ob "[\"MatchPattern\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__18
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Yield x ->
        Bi_outbuf.add_string ob "[\"Yield\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _ = x in
            (
              write__16
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x = x in
            (
              Yojson.Safe.write_bool
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Await x ->
        Bi_outbuf.add_string ob "[\"Await\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Cast x ->
        Bi_outbuf.add_string ob "[\"Cast\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_type_
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Seq x ->
        Bi_outbuf.add_string ob "[\"Seq\",";
        (
          write__8
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Ref x ->
        Bi_outbuf.add_string ob "[\"Ref\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `DeRef x ->
        Bi_outbuf.add_string ob "[\"DeRef\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Ellipsis x ->
        Bi_outbuf.add_string ob "[\"Ellipsis\",";
        (
          write_tok
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `DeepEllipsis x ->
        Bi_outbuf.add_string ob "[\"DeepEllipsis\",";
        (
          write__15
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `DisjExpr x ->
        Bi_outbuf.add_string ob "[\"DisjExpr\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `TypedMetavar x ->
        Bi_outbuf.add_string ob "[\"TypedMetavar\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _ = x in
            (
              write_ident
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x = x in
            (
              write_type_
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `DotAccessEllipsis x ->
        Bi_outbuf.add_string ob "[\"DotAccessEllipsis\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `OtherExpr x ->
        Bi_outbuf.add_string ob "[\"OtherExpr\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              Yojson.Safe.write_string
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__19
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
and string_of_expr ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_expr ob x;
  Bi_outbuf.contents ob
and write_field = (
  fun ob x ->
    match x with
      | `FieldStmt x ->
        Bi_outbuf.add_string ob "[\"FieldStmt\",";
        (
          write_stmt
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `FieldSpread x ->
        Bi_outbuf.add_string ob "[\"FieldSpread\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
and string_of_field ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_field ob x;
  Bi_outbuf.contents ob
and write_finally = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _ = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x = x in
    (
      write_stmt
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
and string_of_finally ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_finally ob x;
  Bi_outbuf.contents ob
and write_for_header = (
  fun ob x ->
    match x with
      | `ForClassic x ->
        Bi_outbuf.add_string ob "[\"ForClassic\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _ = x in
            (
              write__37
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _ = x in
            (
              write__16
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x = x in
            (
              write__16
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `ForEach x ->
        Bi_outbuf.add_string ob "[\"ForEach\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _ = x in
            (
              write_pattern
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `ForEllipsis x ->
        Bi_outbuf.add_string ob "[\"ForEllipsis\",";
        (
          write_tok
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `ForIn x ->
        Bi_outbuf.add_string ob "[\"ForIn\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write__37
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__8
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
and string_of_for_header ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_for_header ob x;
  Bi_outbuf.contents ob
and write_for_var_or_expr = (
  fun ob x ->
    match x with
      | `ForInitVar x ->
        Bi_outbuf.add_string ob "[\"ForInitVar\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_entity
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_variable_definition
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `ForInitExpr x ->
        Bi_outbuf.add_string ob "[\"ForInitExpr\",";
        (
          write_expr
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
and string_of_for_var_or_expr ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_for_var_or_expr ob x;
  Bi_outbuf.contents ob
and write_function_definition : _ -> function_definition -> _ = (
  fun ob (x : function_definition) ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"fkind\":";
    (
      write__52
    )
      ob x.fkind;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"fparams\":";
    (
      write_parameters
    )
      ob x.fparams;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"frettype\":";
    (
      write__6
    )
      ob x.frettype;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"fbody\":";
    (
      write_stmt
    )
      ob x.fbody;
    Bi_outbuf.add_char ob '}';
)
and string_of_function_definition ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_function_definition ob x;
  Bi_outbuf.contents ob
and write_id_info : _ -> id_info -> _ = (
  fun ob (x : id_info) ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"id_resolved\":";
    (
      write__5
    )
      ob x.id_resolved;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"id_type\":";
    (
      write__6
    )
      ob x.id_type;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"id_constness\":";
    (
      write__7
    )
      ob x.id_constness;
    Bi_outbuf.add_char ob '}';
)
and string_of_id_info ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_id_info ob x;
  Bi_outbuf.contents ob
and write_item ob x = (
  write_stmt
) ob x
and string_of_item ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_item ob x;
  Bi_outbuf.contents ob
and write_label_ident = (
  fun ob x ->
    match x with
      | `LNone -> Bi_outbuf.add_string ob "\"LNone\""
      | `LId x ->
        Bi_outbuf.add_string ob "[\"LId\",";
        (
          write_label
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `LInt x ->
        Bi_outbuf.add_string ob "[\"LInt\",";
        (
          write__36
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `LDynamic x ->
        Bi_outbuf.add_string ob "[\"LDynamic\",";
        (
          write_expr
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
and string_of_label_ident ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_label_ident ob x;
  Bi_outbuf.contents ob
and write_macro_definition : _ -> macro_definition -> _ = (
  fun ob (x : macro_definition) ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"macroparams\":";
    (
      write__2
    )
      ob x.macroparams;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"macrobody\":";
    (
      write__19
    )
      ob x.macrobody;
    Bi_outbuf.add_char ob '}';
)
and string_of_macro_definition ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_macro_definition ob x;
  Bi_outbuf.contents ob
and write_module_definition : _ -> module_definition -> _ = (
  fun ob (x : module_definition) ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"mbody\":";
    (
      write_module_definition_kind
    )
      ob x.mbody;
    Bi_outbuf.add_char ob '}';
)
and string_of_module_definition ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_module_definition ob x;
  Bi_outbuf.contents ob
and write_module_definition_kind = (
  fun ob x ->
    match x with
      | `ModuleAlias x ->
        Bi_outbuf.add_string ob "[\"ModuleAlias\",";
        (
          write_dotted_ident
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `ModuleStruct x ->
        Bi_outbuf.add_string ob "[\"ModuleStruct\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write__56
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__57
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `OtherModule x ->
        Bi_outbuf.add_string ob "[\"OtherModule\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              Yojson.Safe.write_string
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__19
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
and string_of_module_definition_kind ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_module_definition_kind ob x;
  Bi_outbuf.contents ob
and write_name = (
  fun ob x ->
    match x with
      | `Id x ->
        Bi_outbuf.add_string ob "[\"Id\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_ident
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_id_info
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `IdQualified x ->
        Bi_outbuf.add_string ob "[\"IdQualified\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              fun ob x ->
                Bi_outbuf.add_char ob '[';
                (let x, _ = x in
                (
                  write_ident
                ) ob x
                );
                Bi_outbuf.add_char ob ',';
                (let _, x = x in
                (
                  write_name_info
                ) ob x
                );
                Bi_outbuf.add_char ob ']';
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_id_info
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
and string_of_name ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_name ob x;
  Bi_outbuf.contents ob
and write_name_info : _ -> name_info -> _ = (
  fun ob (x : name_info) ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"name_qualifier\":";
    (
      write__3
    )
      ob x.name_qualifier;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"name_typeargs\":";
    (
      write__4
    )
      ob x.name_typeargs;
    Bi_outbuf.add_char ob '}';
)
and string_of_name_info ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_name_info ob x;
  Bi_outbuf.contents ob
and write_name_or_dynamic = (
  fun ob x ->
    match x with
      | `EN x ->
        Bi_outbuf.add_string ob "[\"EN\",";
        (
          write_name
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `EDynamic x ->
        Bi_outbuf.add_string ob "[\"EDynamic\",";
        (
          write_expr
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
and string_of_name_or_dynamic ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_name_or_dynamic ob x;
  Bi_outbuf.contents ob
and write_or_type_element = (
  fun ob x ->
    match x with
      | `OrConstructor x ->
        Bi_outbuf.add_string ob "[\"OrConstructor\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_ident
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__44
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `OrEnum x ->
        Bi_outbuf.add_string ob "[\"OrEnum\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_ident
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__16
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `OrUnion x ->
        Bi_outbuf.add_string ob "[\"OrUnion\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_ident
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_type_
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `OtherOr x ->
        Bi_outbuf.add_string ob "[\"OtherOr\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              Yojson.Safe.write_string
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__19
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
and string_of_or_type_element ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_or_type_element ob x;
  Bi_outbuf.contents ob
and write_parameter = (
  fun ob x ->
    match x with
      | `ParamClassic x ->
        Bi_outbuf.add_string ob "[\"ParamClassic\",";
        (
          write_parameter_classic
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `ParamPattern x ->
        Bi_outbuf.add_string ob "[\"ParamPattern\",";
        (
          write_pattern
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `ParamRest x ->
        Bi_outbuf.add_string ob "[\"ParamRest\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_parameter_classic
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `ParamHashSplat x ->
        Bi_outbuf.add_string ob "[\"ParamHashSplat\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_parameter_classic
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `ParamEllipsis x ->
        Bi_outbuf.add_string ob "[\"ParamEllipsis\",";
        (
          write_tok
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `OtherParam x ->
        Bi_outbuf.add_string ob "[\"OtherParam\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              Yojson.Safe.write_string
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__19
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
and string_of_parameter ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_parameter ob x;
  Bi_outbuf.contents ob
and write_parameter_classic : _ -> parameter_classic -> _ = (
  fun ob (x : parameter_classic) ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"pname\":";
    (
      write__53
    )
      ob x.pname;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"ptype\":";
    (
      write__6
    )
      ob x.ptype;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"pdefault\":";
    (
      write__16
    )
      ob x.pdefault;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"pattrs\":";
    (
      write__49
    )
      ob x.pattrs;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"pinfo\":";
    (
      write_id_info
    )
      ob x.pinfo;
    Bi_outbuf.add_char ob '}';
)
and string_of_parameter_classic ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_parameter_classic ob x;
  Bi_outbuf.contents ob
and write_parameters ob x = (
  write__43
) ob x
and string_of_parameters ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_parameters ob x;
  Bi_outbuf.contents ob
and write_pattern = (
  fun ob x ->
    match x with
      | `PatLiteral x ->
        Bi_outbuf.add_string ob "[\"PatLiteral\",";
        (
          write_literal
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `PatConstructor x ->
        Bi_outbuf.add_string ob "[\"PatConstructor\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_dotted_ident
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__38
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `PatRecord x ->
        Bi_outbuf.add_string ob "[\"PatRecord\",";
        (
          write__40
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `PatId x ->
        Bi_outbuf.add_string ob "[\"PatId\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_ident
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_id_info
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `PatTuple x ->
        Bi_outbuf.add_string ob "[\"PatTuple\",";
        (
          write__41
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `PatList x ->
        Bi_outbuf.add_string ob "[\"PatList\",";
        (
          write__41
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `PatKeyVal x ->
        Bi_outbuf.add_string ob "[\"PatKeyVal\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_pattern
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_pattern
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `PatUnderscore x ->
        Bi_outbuf.add_string ob "[\"PatUnderscore\",";
        (
          write_tok
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `PatDisj x ->
        Bi_outbuf.add_string ob "[\"PatDisj\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_pattern
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_pattern
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `PatTyped x ->
        Bi_outbuf.add_string ob "[\"PatTyped\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_pattern
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_type_
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `PatWhen x ->
        Bi_outbuf.add_string ob "[\"PatWhen\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_pattern
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `PatAs x ->
        Bi_outbuf.add_string ob "[\"PatAs\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_pattern
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              fun ob x ->
                Bi_outbuf.add_char ob '[';
                (let x, _ = x in
                (
                  write_ident
                ) ob x
                );
                Bi_outbuf.add_char ob ',';
                (let _, x = x in
                (
                  write_id_info
                ) ob x
                );
                Bi_outbuf.add_char ob ']';
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `PatType x ->
        Bi_outbuf.add_string ob "[\"PatType\",";
        (
          write_type_
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `PatVar x ->
        Bi_outbuf.add_string ob "[\"PatVar\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_type_
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__42
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `PatEllipsis x ->
        Bi_outbuf.add_string ob "[\"PatEllipsis\",";
        (
          write_tok
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `DisjPat x ->
        Bi_outbuf.add_string ob "[\"DisjPat\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_pattern
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_pattern
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `OtherPat x ->
        Bi_outbuf.add_string ob "[\"OtherPat\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              Yojson.Safe.write_string
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__19
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
and string_of_pattern ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_pattern ob x;
  Bi_outbuf.contents ob
and write_qualifier = (
  fun ob x ->
    match x with
      | `QTop x ->
        Bi_outbuf.add_string ob "[\"QTop\",";
        (
          write_tok
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `QDots x ->
        Bi_outbuf.add_string ob "[\"QDots\",";
        (
          write_dotted_ident
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `QExpr x ->
        Bi_outbuf.add_string ob "[\"QExpr\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
and string_of_qualifier ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_qualifier ob x;
  Bi_outbuf.contents ob
and write_stmt : _ -> stmt -> _ = (
  fun ob (x : stmt) ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"s\":";
    (
      write_stmt_kind
    )
      ob x.s;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"s_id\":";
    (
      Yojson.Safe.write_int
    )
      ob x.s_id;
    Bi_outbuf.add_char ob '}';
)
and string_of_stmt ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_stmt ob x;
  Bi_outbuf.contents ob
and write_stmt_kind = (
  fun ob x ->
    match x with
      | `ExprStmt x ->
        Bi_outbuf.add_string ob "[\"ExprStmt\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_sc
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Block x ->
        Bi_outbuf.add_string ob "[\"Block\",";
        (
          write__30
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `If x ->
        Bi_outbuf.add_string ob "[\"If\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _, _ = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x, _ = x in
            (
              write_stmt
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, _, x = x in
            (
              write__31
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `While x ->
        Bi_outbuf.add_string ob "[\"While\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _ = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x = x in
            (
              write_stmt
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Return x ->
        Bi_outbuf.add_string ob "[\"Return\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _ = x in
            (
              write__16
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x = x in
            (
              write_sc
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `DoWhile x ->
        Bi_outbuf.add_string ob "[\"DoWhile\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _ = x in
            (
              write_stmt
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `For x ->
        Bi_outbuf.add_string ob "[\"For\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _ = x in
            (
              write_for_header
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x = x in
            (
              write_stmt
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Switch x ->
        Bi_outbuf.add_string ob "[\"Switch\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _ = x in
            (
              write__16
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x = x in
            (
              write__32
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Continue x ->
        Bi_outbuf.add_string ob "[\"Continue\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _ = x in
            (
              write_label_ident
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x = x in
            (
              write_sc
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Break x ->
        Bi_outbuf.add_string ob "[\"Break\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _ = x in
            (
              write_label_ident
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x = x in
            (
              write_sc
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Label x ->
        Bi_outbuf.add_string ob "[\"Label\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_label
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_stmt
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Goto x ->
        Bi_outbuf.add_string ob "[\"Goto\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_label
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Throw x ->
        Bi_outbuf.add_string ob "[\"Throw\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _ = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x = x in
            (
              write_sc
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Try x ->
        Bi_outbuf.add_string ob "[\"Try\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _, _ = x in
            (
              write_stmt
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x, _ = x in
            (
              write__33
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, _, x = x in
            (
              write__34
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `WithUsingResource x ->
        Bi_outbuf.add_string ob "[\"WithUsingResource\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _ = x in
            (
              write_stmt
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x = x in
            (
              write_stmt
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Assert x ->
        Bi_outbuf.add_string ob "[\"Assert\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _, _ = x in
            (
              write_expr
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x, _ = x in
            (
              write__16
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, _, x = x in
            (
              write_sc
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `DefStmt x ->
        Bi_outbuf.add_string ob "[\"DefStmt\",";
        (
          write_definition
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `DirectiveStmt x ->
        Bi_outbuf.add_string ob "[\"DirectiveStmt\",";
        (
          write_directive
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `DisjStmt x ->
        Bi_outbuf.add_string ob "[\"DisjStmt\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_stmt
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_stmt
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `OtherStmtWithStmt x ->
        Bi_outbuf.add_string ob "[\"OtherStmtWithStmt\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _ = x in
            (
              Yojson.Safe.write_string
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _ = x in
            (
              write__16
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x = x in
            (
              write_stmt
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `OtherStmt x ->
        Bi_outbuf.add_string ob "[\"OtherStmt\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              Yojson.Safe.write_string
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__19
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
and string_of_stmt_kind ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_stmt_kind ob x;
  Bi_outbuf.contents ob
and write_type_ = (
  fun ob x ->
    match x with
      | `TyBuiltin x ->
        Bi_outbuf.add_string ob "[\"TyBuiltin\",";
        (
          write__1
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `TyFun x ->
        Bi_outbuf.add_string ob "[\"TyFun\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write__43
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_type_
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `TyArray x ->
        Bi_outbuf.add_string ob "[\"TyArray\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write__27
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_type_
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `TyTuple x ->
        Bi_outbuf.add_string ob "[\"TyTuple\",";
        (
          write__45
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `TyN x ->
        Bi_outbuf.add_string ob "[\"TyN\",";
        (
          write_name
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `TyNameApply x ->
        Bi_outbuf.add_string ob "[\"TyNameApply\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_dotted_ident
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_type_arguments
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `TyVar x ->
        Bi_outbuf.add_string ob "[\"TyVar\",";
        (
          write_ident
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `TyAny x ->
        Bi_outbuf.add_string ob "[\"TyAny\",";
        (
          write_tok
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `TyPointer x ->
        Bi_outbuf.add_string ob "[\"TyPointer\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_type_
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `TyRef x ->
        Bi_outbuf.add_string ob "[\"TyRef\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_type_
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `TyQuestion x ->
        Bi_outbuf.add_string ob "[\"TyQuestion\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_type_
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `TyRest x ->
        Bi_outbuf.add_string ob "[\"TyRest\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write_type_
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `TyAnd x ->
        Bi_outbuf.add_string ob "[\"TyAnd\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _ = x in
            (
              write_type_
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x = x in
            (
              write_type_
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `TyOr x ->
        Bi_outbuf.add_string ob "[\"TyOr\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _ = x in
            (
              write_type_
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x = x in
            (
              write_type_
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `TyRecordAnon x ->
        Bi_outbuf.add_string ob "[\"TyRecordAnon\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__11
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `TyInterfaceAnon x ->
        Bi_outbuf.add_string ob "[\"TyInterfaceAnon\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__11
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `TyEllipsis x ->
        Bi_outbuf.add_string ob "[\"TyEllipsis\",";
        (
          write_tok
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `OtherType x ->
        Bi_outbuf.add_string ob "[\"OtherType\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              Yojson.Safe.write_string
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__19
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
and string_of_type_ ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_type_ ob x;
  Bi_outbuf.contents ob
and write_type_argument = (
  fun ob x ->
    match x with
      | `TypeArg x ->
        Bi_outbuf.add_string ob "[\"TypeArg\",";
        (
          write_type_
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `TypeWildcard x ->
        Bi_outbuf.add_string ob "[\"TypeWildcard\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__47
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `TypeLifetime x ->
        Bi_outbuf.add_string ob "[\"TypeLifetime\",";
        (
          write_ident
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `OtherTypeArg x ->
        Bi_outbuf.add_string ob "[\"OtherTypeArg\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              Yojson.Safe.write_string
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__19
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
and string_of_type_argument ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_type_argument ob x;
  Bi_outbuf.contents ob
and write_type_arguments ob x = (
  write__46
) ob x
and string_of_type_arguments ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_type_arguments ob x;
  Bi_outbuf.contents ob
and write_type_definition : _ -> type_definition -> _ = (
  fun ob (x : type_definition) ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"tbody\":";
    (
      write_type_definition_kind
    )
      ob x.tbody;
    Bi_outbuf.add_char ob '}';
)
and string_of_type_definition ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_type_definition ob x;
  Bi_outbuf.contents ob
and write_type_definition_kind = (
  fun ob x ->
    match x with
      | `OrType x ->
        Bi_outbuf.add_string ob "[\"OrType\",";
        (
          write__54
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `AndType x ->
        Bi_outbuf.add_string ob "[\"AndType\",";
        (
          write__11
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `AliasType x ->
        Bi_outbuf.add_string ob "[\"AliasType\",";
        (
          write_type_
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `NewType x ->
        Bi_outbuf.add_string ob "[\"NewType\",";
        (
          write_type_
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `Exception x ->
        Bi_outbuf.add_string ob "[\"Exception\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              write_ident
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__44
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `OtherTypeKind x ->
        Bi_outbuf.add_string ob "[\"OtherTypeKind\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              Yojson.Safe.write_string
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__19
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
and string_of_type_definition_kind ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_type_definition_kind ob x;
  Bi_outbuf.contents ob
and write_type_parameter = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _ = x in
    (
      write_ident
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x = x in
    (
      write__51
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
and string_of_type_parameter ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_type_parameter ob x;
  Bi_outbuf.contents ob
and write_type_parameter_constraint = (
  fun ob x ->
    match x with
      | `Extends x ->
        Bi_outbuf.add_string ob "[\"Extends\",";
        (
          write_type_
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `HasConstructor x ->
        Bi_outbuf.add_string ob "[\"HasConstructor\",";
        (
          write_tok
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `OtherTypeParam x ->
        Bi_outbuf.add_string ob "[\"OtherTypeParam\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _ = x in
            (
              Yojson.Safe.write_string
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x = x in
            (
              write__19
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
and string_of_type_parameter_constraint ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_type_parameter_constraint ob x;
  Bi_outbuf.contents ob
and write_variable_definition : _ -> variable_definition -> _ = (
  fun ob (x : variable_definition) ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"vinit\":";
    (
      write__16
    )
      ob x.vinit;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"vtype\":";
    (
      write__6
    )
      ob x.vtype;
    Bi_outbuf.add_char ob '}';
)
and string_of_variable_definition ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_variable_definition ob x;
  Bi_outbuf.contents ob
and write_xml : _ -> xml -> _ = (
  fun ob (x : xml) ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"xml_kind\":";
    (
      write_xml_kind
    )
      ob x.xml_kind;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"xml_attrs\":";
    (
      write__25
    )
      ob x.xml_attrs;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"xml_body\":";
    (
      write__26
    )
      ob x.xml_body;
    Bi_outbuf.add_char ob '}';
)
and string_of_xml ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_xml ob x;
  Bi_outbuf.contents ob
and write_xml_attr_value ob x = (
  write_expr
) ob x
and string_of_xml_attr_value ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_xml_attr_value ob x;
  Bi_outbuf.contents ob
and write_xml_attribute = (
  fun ob x ->
    match x with
      | `XmlAttr x ->
        Bi_outbuf.add_string ob "[\"XmlAttr\",";
        (
          fun ob x ->
            Bi_outbuf.add_char ob '[';
            (let x, _, _ = x in
            (
              write_ident
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, x, _ = x in
            (
              write_tok
            ) ob x
            );
            Bi_outbuf.add_char ob ',';
            (let _, _, x = x in
            (
              write_xml_attr_value
            ) ob x
            );
            Bi_outbuf.add_char ob ']';
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `XmlAttrExpr x ->
        Bi_outbuf.add_string ob "[\"XmlAttrExpr\",";
        (
          write__15
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `XmlEllipsis x ->
        Bi_outbuf.add_string ob "[\"XmlEllipsis\",";
        (
          write_tok
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
and string_of_xml_attribute ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_xml_attribute ob x;
  Bi_outbuf.contents ob
and write_xml_body = (
  fun ob x ->
    match x with
      | `XmlText x ->
        Bi_outbuf.add_string ob "[\"XmlText\",";
        (
          write__1
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `XmlExpr x ->
        Bi_outbuf.add_string ob "[\"XmlExpr\",";
        (
          write__27
        ) ob x;
        Bi_outbuf.add_char ob ']'
      | `XmlXml x ->
        Bi_outbuf.add_string ob "[\"XmlXml\",";
        (
          write_xml
        ) ob x;
        Bi_outbuf.add_char ob ']'
)
and string_of_xml_body ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_xml_body ob x;
  Bi_outbuf.contents ob
let rec read__10 p lb = (
  Atdgen_runtime.Oj_run.read_list (
    read_field
  )
) p lb
and _10_of_string s =
  read__10 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__11 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read__10
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x2 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1, x2)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
)
and _11_of_string s =
  read__11 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__13 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read_arguments
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x2 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1, x2)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
)
and _13_of_string s =
  read__13 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__15 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read_expr
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x2 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1, x2)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
)
and _15_of_string s =
  read__15 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__16 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "None" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (None : _ option)
            | "Some" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_expr
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "None" ->
              (None : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Some" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_expr
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and _16_of_string s =
  read__16 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__17 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            fun p lb ->
              Yojson.Safe.read_space p lb;
              let std_tuple = Yojson.Safe.start_any_tuple p lb in
              let len = ref 0 in
              let end_of_tuple = ref false in
              (try
                let x0 =
                  let x =
                    (
                      read__16
                    ) p lb
                  in
                  incr len;
                  Yojson.Safe.read_space p lb;
                  Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                  x
                in
                let x1 =
                  let x =
                    (
                      read__16
                    ) p lb
                  in
                  incr len;
                  Yojson.Safe.read_space p lb;
                  Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                  x
                in
                let x2 =
                  let x =
                    (
                      read__16
                    ) p lb
                  in
                  incr len;
                  (try
                    Yojson.Safe.read_space p lb;
                    Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                  with Yojson.End_of_tuple -> end_of_tuple := true);
                  x
                in
                if not !end_of_tuple then (
                  try
                    while true do
                      Yojson.Safe.skip_json p lb;
                      Yojson.Safe.read_space p lb;
                      Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                    done
                  with Yojson.End_of_tuple -> ()
                );
                (x0, x1, x2)
              with Yojson.End_of_tuple ->
                Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x2 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1, x2)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
)
and _17_of_string s =
  read__17 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__18 p lb = (
  Atdgen_runtime.Oj_run.read_list (
    read_action
  )
) p lb
and _18_of_string s =
  read__18 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__19 p lb = (
  Atdgen_runtime.Oj_run.read_list (
    read_any
  )
) p lb
and _19_of_string s =
  read__19 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__25 p lb = (
  Atdgen_runtime.Oj_run.read_list (
    read_xml_attribute
  )
) p lb
and _25_of_string s =
  read__25 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__26 p lb = (
  Atdgen_runtime.Oj_run.read_list (
    read_xml_body
  )
) p lb
and _26_of_string s =
  read__26 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__27 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read__16
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x2 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1, x2)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
)
and _27_of_string s =
  read__27 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__28 p lb = (
  Atdgen_runtime.Oj_run.read_list (
    read_argument
  )
) p lb
and _28_of_string s =
  read__28 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__29 p lb = (
  Atdgen_runtime.Oj_run.read_list (
    read_stmt
  )
) p lb
and _29_of_string s =
  read__29 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__3 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "None" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (None : _ option)
            | "Some" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_qualifier
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "None" ->
              (None : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Some" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_qualifier
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and _3_of_string s =
  read__3 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__30 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read__29
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x2 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1, x2)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
)
and _30_of_string s =
  read__30 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__31 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "None" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (None : _ option)
            | "Some" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_stmt
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "None" ->
              (None : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Some" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_stmt
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and _31_of_string s =
  read__31 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__32 p lb = (
  Atdgen_runtime.Oj_run.read_list (
    read_case_and_body
  )
) p lb
and _32_of_string s =
  read__32 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__33 p lb = (
  Atdgen_runtime.Oj_run.read_list (
    read_catch
  )
) p lb
and _33_of_string s =
  read__33 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__34 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "None" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (None : _ option)
            | "Some" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_finally
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "None" ->
              (None : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Some" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_finally
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and _34_of_string s =
  read__34 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__35 p lb = (
  Atdgen_runtime.Oj_run.read_list (
    read_case
  )
) p lb
and _35_of_string s =
  read__35 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__37 p lb = (
  Atdgen_runtime.Oj_run.read_list (
    read_for_var_or_expr
  )
) p lb
and _37_of_string s =
  read__37 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__38 p lb = (
  Atdgen_runtime.Oj_run.read_list (
    read_pattern
  )
) p lb
and _38_of_string s =
  read__38 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__39 p lb = (
  Atdgen_runtime.Oj_run.read_list (
    fun p lb ->
      Yojson.Safe.read_space p lb;
      let std_tuple = Yojson.Safe.start_any_tuple p lb in
      let len = ref 0 in
      let end_of_tuple = ref false in
      (try
        let x0 =
          let x =
            (
              read_dotted_ident
            ) p lb
          in
          incr len;
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          x
        in
        let x1 =
          let x =
            (
              read_pattern
            ) p lb
          in
          incr len;
          (try
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          with Yojson.End_of_tuple -> end_of_tuple := true);
          x
        in
        if not !end_of_tuple then (
          try
            while true do
              Yojson.Safe.skip_json p lb;
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_tuple_sep2 p std_tuple lb;
            done
          with Yojson.End_of_tuple -> ()
        );
        (x0, x1)
      with Yojson.End_of_tuple ->
        Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
  )
) p lb
and _39_of_string s =
  read__39 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__4 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "None" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (None : _ option)
            | "Some" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_type_arguments
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "None" ->
              (None : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Some" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_type_arguments
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and _4_of_string s =
  read__4 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__40 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read__39
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x2 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1, x2)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
)
and _40_of_string s =
  read__40 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__41 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read__38
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x2 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1, x2)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
)
and _41_of_string s =
  read__41 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__42 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "None" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (None : _ option)
            | "Some" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_id_info
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "None" ->
              (None : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Some" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_id_info
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and _42_of_string s =
  read__42 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__43 p lb = (
  Atdgen_runtime.Oj_run.read_list (
    read_parameter
  )
) p lb
and _43_of_string s =
  read__43 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__44 p lb = (
  Atdgen_runtime.Oj_run.read_list (
    read_type_
  )
) p lb
and _44_of_string s =
  read__44 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__45 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read__44
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x2 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1, x2)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
)
and _45_of_string s =
  read__45 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__46 p lb = (
  Atdgen_runtime.Oj_run.read_list (
    read_type_argument
  )
) p lb
and _46_of_string s =
  read__46 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__47 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "None" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (None : _ option)
            | "Some" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read__20
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "None" ->
              (None : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Some" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read__20
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and _47_of_string s =
  read__47 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__49 p lb = (
  Atdgen_runtime.Oj_run.read_list (
    read_attribute
  )
) p lb
and _49_of_string s =
  read__49 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__50 p lb = (
  Atdgen_runtime.Oj_run.read_list (
    read_type_parameter
  )
) p lb
and _50_of_string s =
  read__50 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__51 p lb = (
  Atdgen_runtime.Oj_run.read_list (
    read_type_parameter_constraint
  )
) p lb
and _51_of_string s =
  read__51 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__54 p lb = (
  Atdgen_runtime.Oj_run.read_list (
    read_or_type_element
  )
) p lb
and _54_of_string s =
  read__54 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__57 p lb = (
  Atdgen_runtime.Oj_run.read_list (
    read_item
  )
) p lb
and _57_of_string s =
  read__57 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__58 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "None" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (None : _ option)
            | "Some" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_alias
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "None" ->
              (None : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Some" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_alias
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and _58_of_string s =
  read__58 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__6 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "None" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (None : _ option)
            | "Some" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_type_
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "None" ->
              (None : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Some" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_type_
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and _6_of_string s =
  read__6 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__8 p lb = (
  Atdgen_runtime.Oj_run.read_list (
    read_expr
  )
) p lb
and _8_of_string s =
  read__8 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read__9 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read__8
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x2 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1, x2)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
)
and _9_of_string s =
  read__9 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_action = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read_pattern
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read_expr
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
)
and action_of_string s =
  read_action (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_alias = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read_ident
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read_id_info
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
)
and alias_of_string s =
  read_alias (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_any = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "E" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_expr
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `E x
            | "S" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_stmt
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `S x
            | "Ss" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__29
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Ss x
            | "T" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_type_
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `T x
            | "P" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_pattern
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `P x
            | "At" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_attribute
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `At x
            | "Fld" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_field
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Fld x
            | "Args" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__28
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Args x
            | "I" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_ident
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `I x
            | "Str" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__1
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Str x
            | "Tk" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Tk x
            | "TodoK" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__1
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `TodoK x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "E" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_expr
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `E x
            | "S" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_stmt
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `S x
            | "Ss" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__29
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Ss x
            | "T" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_type_
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `T x
            | "P" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_pattern
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `P x
            | "At" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_attribute
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `At x
            | "Fld" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_field
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Fld x
            | "Args" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__28
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Args x
            | "I" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_ident
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `I x
            | "Str" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__1
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Str x
            | "Tk" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Tk x
            | "TodoK" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__1
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `TodoK x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and any_of_string s =
  read_any (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_argument = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "Arg" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_expr
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Arg x
            | "ArgKwd" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ArgKwd x
            | "ArgKwdOptional" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ArgKwdOptional x
            | "ArgType" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_type_
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ArgType x
            | "ArgOther" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ArgOther x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Arg" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_expr
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Arg x
            | "ArgKwd" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `ArgKwd x
            | "ArgKwdOptional" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `ArgKwdOptional x
            | "ArgType" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_type_
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `ArgType x
            | "ArgOther" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `ArgOther x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and argument_of_string s =
  read_argument (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_arguments p lb = (
  read__28
) p lb
and arguments_of_string s =
  read_arguments (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_attribute = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "KeywordAttr" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__48
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `KeywordAttr x
            | "NamedAttr" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_name
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read__13
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `NamedAttr x
            | "OtherAttribute" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `OtherAttribute x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "KeywordAttr" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__48
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `KeywordAttr x
            | "NamedAttr" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_name
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read__13
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `NamedAttr x
            | "OtherAttribute" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `OtherAttribute x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and attribute_of_string s =
  read_attribute (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_case = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "Case" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_pattern
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Case x
            | "Default" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Default x
            | "CaseEqualExpr" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `CaseEqualExpr x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Case" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_pattern
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Case x
            | "Default" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Default x
            | "CaseEqualExpr" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `CaseEqualExpr x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and case_of_string s =
  read_case (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_case_and_body = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "CasesAndBody" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read__35
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_stmt
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `CasesAndBody x
            | "CaseEllipsis" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `CaseEllipsis x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "CasesAndBody" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read__35
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_stmt
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `CasesAndBody x
            | "CaseEllipsis" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `CaseEllipsis x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and case_and_body_of_string s =
  read_case_and_body (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_catch = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read_pattern
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x2 =
        let x =
          (
            read_stmt
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1, x2)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
)
and catch_of_string s =
  read_catch (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_class_definition = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_ckind = ref (None) in
    let field_cextends = ref (None) in
    let field_cimplements = ref (None) in
    let field_cmixins = ref (None) in
    let field_cparams = ref (None) in
    let field_cbody = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          match len with
            | 5 -> (
                if String.unsafe_get s pos = 'c' then (
                  match String.unsafe_get s (pos+1) with
                    | 'b' -> (
                        if String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'd' && String.unsafe_get s (pos+4) = 'y' then (
                          5
                        )
                        else (
                          -1
                        )
                      )
                    | 'k' -> (
                        if String.unsafe_get s (pos+2) = 'i' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 'd' then (
                          0
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
                else (
                  -1
                )
              )
            | 7 -> (
                if String.unsafe_get s pos = 'c' then (
                  match String.unsafe_get s (pos+1) with
                    | 'm' -> (
                        if String.unsafe_get s (pos+2) = 'i' && String.unsafe_get s (pos+3) = 'x' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 's' then (
                          3
                        )
                        else (
                          -1
                        )
                      )
                    | 'p' -> (
                        if String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 'm' && String.unsafe_get s (pos+6) = 's' then (
                          4
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
                else (
                  -1
                )
              )
            | 8 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'x' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'd' && String.unsafe_get s (pos+7) = 's' then (
                  1
                )
                else (
                  -1
                )
              )
            | 11 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'p' && String.unsafe_get s (pos+4) = 'l' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 't' && String.unsafe_get s (pos+10) = 's' then (
                  2
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_ckind := (
              Some (
                (
                  read__55
                ) p lb
              )
            );
          | 1 ->
            field_cextends := (
              Some (
                (
                  read__44
                ) p lb
              )
            );
          | 2 ->
            field_cimplements := (
              Some (
                (
                  read__44
                ) p lb
              )
            );
          | 3 ->
            field_cmixins := (
              Some (
                (
                  read__44
                ) p lb
              )
            );
          | 4 ->
            field_cparams := (
              Some (
                (
                  read_parameters
                ) p lb
              )
            );
          | 5 ->
            field_cbody := (
              Some (
                (
                  read__11
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            match len with
              | 5 -> (
                  if String.unsafe_get s pos = 'c' then (
                    match String.unsafe_get s (pos+1) with
                      | 'b' -> (
                          if String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'd' && String.unsafe_get s (pos+4) = 'y' then (
                            5
                          )
                          else (
                            -1
                          )
                        )
                      | 'k' -> (
                          if String.unsafe_get s (pos+2) = 'i' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 'd' then (
                            0
                          )
                          else (
                            -1
                          )
                        )
                      | _ -> (
                          -1
                        )
                  )
                  else (
                    -1
                  )
                )
              | 7 -> (
                  if String.unsafe_get s pos = 'c' then (
                    match String.unsafe_get s (pos+1) with
                      | 'm' -> (
                          if String.unsafe_get s (pos+2) = 'i' && String.unsafe_get s (pos+3) = 'x' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 's' then (
                            3
                          )
                          else (
                            -1
                          )
                        )
                      | 'p' -> (
                          if String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 'm' && String.unsafe_get s (pos+6) = 's' then (
                            4
                          )
                          else (
                            -1
                          )
                        )
                      | _ -> (
                          -1
                        )
                  )
                  else (
                    -1
                  )
                )
              | 8 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'x' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'd' && String.unsafe_get s (pos+7) = 's' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 11 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'p' && String.unsafe_get s (pos+4) = 'l' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 't' && String.unsafe_get s (pos+10) = 's' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_ckind := (
                Some (
                  (
                    read__55
                  ) p lb
                )
              );
            | 1 ->
              field_cextends := (
                Some (
                  (
                    read__44
                  ) p lb
                )
              );
            | 2 ->
              field_cimplements := (
                Some (
                  (
                    read__44
                  ) p lb
                )
              );
            | 3 ->
              field_cmixins := (
                Some (
                  (
                    read__44
                  ) p lb
                )
              );
            | 4 ->
              field_cparams := (
                Some (
                  (
                    read_parameters
                  ) p lb
                )
              );
            | 5 ->
              field_cbody := (
                Some (
                  (
                    read__11
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            ckind = (match !field_ckind with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "ckind");
            cextends = (match !field_cextends with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "cextends");
            cimplements = (match !field_cimplements with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "cimplements");
            cmixins = (match !field_cmixins with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "cmixins");
            cparams = (match !field_cparams with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "cparams");
            cbody = (match !field_cbody with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "cbody");
          }
         : class_definition)
      )
)
and class_definition_of_string s =
  read_class_definition (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_definition = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read_entity
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read_definition_kind
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
)
and definition_of_string s =
  read_definition (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_definition_kind = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "FuncDef" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_function_definition
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `FuncDef x
            | "VarDef" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_variable_definition
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `VarDef x
            | "FieldDefColon" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_variable_definition
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `FieldDefColon x
            | "ClassDef" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_class_definition
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ClassDef x
            | "TypeDef" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_type_definition
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `TypeDef x
            | "ModuleDef" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_module_definition
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ModuleDef x
            | "MacroDef" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_macro_definition
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `MacroDef x
            | "Signature" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_type_
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Signature x
            | "UseOuterDecl" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `UseOuterDecl x
            | "OtherDef" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `OtherDef x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "FuncDef" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_function_definition
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `FuncDef x
            | "VarDef" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_variable_definition
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `VarDef x
            | "FieldDefColon" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_variable_definition
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `FieldDefColon x
            | "ClassDef" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_class_definition
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `ClassDef x
            | "TypeDef" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_type_definition
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `TypeDef x
            | "ModuleDef" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_module_definition
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `ModuleDef x
            | "MacroDef" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_macro_definition
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `MacroDef x
            | "Signature" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_type_
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Signature x
            | "UseOuterDecl" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `UseOuterDecl x
            | "OtherDef" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `OtherDef x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and definition_kind_of_string s =
  read_definition_kind (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_directive = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "ImportFrom" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_module_name
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x3 =
                        let x =
                          (
                            read__58
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2, x3)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2; 3 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ImportFrom x
            | "ImportAs" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_module_name
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read__58
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ImportAs x
            | "ImportAll" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_module_name
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ImportAll x
            | "Package" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_dotted_ident
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Package x
            | "PackageEnd" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `PackageEnd x
            | "Pragma" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Pragma x
            | "OtherDirective" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `OtherDirective x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "ImportFrom" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_module_name
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x3 =
                        let x =
                          (
                            read__58
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2, x3)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2; 3 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `ImportFrom x
            | "ImportAs" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_module_name
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read__58
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `ImportAs x
            | "ImportAll" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_module_name
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `ImportAll x
            | "Package" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_dotted_ident
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Package x
            | "PackageEnd" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `PackageEnd x
            | "Pragma" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Pragma x
            | "OtherDirective" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `OtherDirective x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and directive_of_string s =
  read_directive (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_entity = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_name = ref (None) in
    let field_attrs = ref (None) in
    let field_tparams = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          match len with
            | 4 -> (
                if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                  0
                )
                else (
                  -1
                )
              )
            | 5 -> (
                if String.unsafe_get s pos = 'a' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 's' then (
                  1
                )
                else (
                  -1
                )
              )
            | 7 -> (
                if String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 'p' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 'm' && String.unsafe_get s (pos+6) = 's' then (
                  2
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_name := (
              Some (
                (
                  read_name_or_dynamic
                ) p lb
              )
            );
          | 1 ->
            field_attrs := (
              Some (
                (
                  read__49
                ) p lb
              )
            );
          | 2 ->
            field_tparams := (
              Some (
                (
                  read__50
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            match len with
              | 4 -> (
                  if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 5 -> (
                  if String.unsafe_get s pos = 'a' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 's' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 7 -> (
                  if String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 'p' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 'm' && String.unsafe_get s (pos+6) = 's' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_name := (
                Some (
                  (
                    read_name_or_dynamic
                  ) p lb
                )
              );
            | 1 ->
              field_attrs := (
                Some (
                  (
                    read__49
                  ) p lb
                )
              );
            | 2 ->
              field_tparams := (
                Some (
                  (
                    read__50
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            name = (match !field_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "name");
            attrs = (match !field_attrs with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "attrs");
            tparams = (match !field_tparams with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "tparams");
          }
         : entity)
      )
)
and entity_of_string s =
  read_entity (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_expr = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "L" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_literal
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `L x
            | "Container" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_container_operator
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__9
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Container x
            | "Tuple" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__9
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Tuple x
            | "Record" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__11
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Record x
            | "Constructor" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_dotted_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__8
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Constructor x
            | "N" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_name
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `N x
            | "IdSpecial" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__12
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `IdSpecial x
            | "Call" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__13
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Call x
            | "Xml" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_xml
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Xml x
            | "Assign" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Assign x
            | "AssignOp" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__14
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `AssignOp x
            | "LetPattern" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_pattern
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `LetPattern x
            | "DotAccess" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_name_or_dynamic
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `DotAccess x
            | "ArrayAccess" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__15
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ArrayAccess x
            | "SliceAccess" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__17
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `SliceAccess x
            | "Lambda" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_function_definition
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Lambda x
            | "AnonClass" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_class_definition
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `AnonClass x
            | "Conditional" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Conditional x
            | "MatchPattern" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__18
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `MatchPattern x
            | "Yield" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__16
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_bool
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Yield x
            | "Await" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Await x
            | "Cast" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Cast x
            | "Seq" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__8
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Seq x
            | "Ref" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Ref x
            | "DeRef" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `DeRef x
            | "Ellipsis" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Ellipsis x
            | "DeepEllipsis" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__15
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `DeepEllipsis x
            | "DisjExpr" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `DisjExpr x
            | "TypedMetavar" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `TypedMetavar x
            | "DotAccessEllipsis" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `DotAccessEllipsis x
            | "OtherExpr" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `OtherExpr x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "L" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_literal
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `L x
            | "Container" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_container_operator
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__9
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Container x
            | "Tuple" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__9
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Tuple x
            | "Record" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__11
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Record x
            | "Constructor" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_dotted_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__8
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Constructor x
            | "N" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_name
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `N x
            | "IdSpecial" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__12
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `IdSpecial x
            | "Call" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__13
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Call x
            | "Xml" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_xml
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Xml x
            | "Assign" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Assign x
            | "AssignOp" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__14
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `AssignOp x
            | "LetPattern" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_pattern
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `LetPattern x
            | "DotAccess" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_name_or_dynamic
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `DotAccess x
            | "ArrayAccess" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__15
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `ArrayAccess x
            | "SliceAccess" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__17
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `SliceAccess x
            | "Lambda" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_function_definition
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Lambda x
            | "AnonClass" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_class_definition
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `AnonClass x
            | "Conditional" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Conditional x
            | "MatchPattern" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__18
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `MatchPattern x
            | "Yield" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__16
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_bool
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Yield x
            | "Await" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Await x
            | "Cast" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Cast x
            | "Seq" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__8
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Seq x
            | "Ref" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Ref x
            | "DeRef" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `DeRef x
            | "Ellipsis" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Ellipsis x
            | "DeepEllipsis" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__15
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `DeepEllipsis x
            | "DisjExpr" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `DisjExpr x
            | "TypedMetavar" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `TypedMetavar x
            | "DotAccessEllipsis" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `DotAccessEllipsis x
            | "OtherExpr" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `OtherExpr x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and expr_of_string s =
  read_expr (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_field = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "FieldStmt" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_stmt
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `FieldStmt x
            | "FieldSpread" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `FieldSpread x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "FieldStmt" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_stmt
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `FieldStmt x
            | "FieldSpread" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `FieldSpread x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and field_of_string s =
  read_field (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_finally = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read_stmt
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
)
and finally_of_string s =
  read_finally (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_for_header = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "ForClassic" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read__37
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__16
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read__16
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ForClassic x
            | "ForEach" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_pattern
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ForEach x
            | "ForEllipsis" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ForEllipsis x
            | "ForIn" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read__37
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__8
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ForIn x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "ForClassic" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read__37
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__16
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read__16
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `ForClassic x
            | "ForEach" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_pattern
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `ForEach x
            | "ForEllipsis" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `ForEllipsis x
            | "ForIn" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read__37
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__8
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `ForIn x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and for_header_of_string s =
  read_for_header (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_for_var_or_expr = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "ForInitVar" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_entity
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_variable_definition
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ForInitVar x
            | "ForInitExpr" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_expr
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ForInitExpr x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "ForInitVar" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_entity
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_variable_definition
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `ForInitVar x
            | "ForInitExpr" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_expr
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `ForInitExpr x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and for_var_or_expr_of_string s =
  read_for_var_or_expr (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_function_definition = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_fkind = ref (None) in
    let field_fparams = ref (None) in
    let field_frettype = ref (None) in
    let field_fbody = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          match len with
            | 5 -> (
                if String.unsafe_get s pos = 'f' then (
                  match String.unsafe_get s (pos+1) with
                    | 'b' -> (
                        if String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'd' && String.unsafe_get s (pos+4) = 'y' then (
                          3
                        )
                        else (
                          -1
                        )
                      )
                    | 'k' -> (
                        if String.unsafe_get s (pos+2) = 'i' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 'd' then (
                          0
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
                else (
                  -1
                )
              )
            | 7 -> (
                if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'p' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 'm' && String.unsafe_get s (pos+6) = 's' then (
                  1
                )
                else (
                  -1
                )
              )
            | 8 -> (
                if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'y' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 'e' then (
                  2
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_fkind := (
              Some (
                (
                  read__52
                ) p lb
              )
            );
          | 1 ->
            field_fparams := (
              Some (
                (
                  read_parameters
                ) p lb
              )
            );
          | 2 ->
            field_frettype := (
              Some (
                (
                  read__6
                ) p lb
              )
            );
          | 3 ->
            field_fbody := (
              Some (
                (
                  read_stmt
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            match len with
              | 5 -> (
                  if String.unsafe_get s pos = 'f' then (
                    match String.unsafe_get s (pos+1) with
                      | 'b' -> (
                          if String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'd' && String.unsafe_get s (pos+4) = 'y' then (
                            3
                          )
                          else (
                            -1
                          )
                        )
                      | 'k' -> (
                          if String.unsafe_get s (pos+2) = 'i' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 'd' then (
                            0
                          )
                          else (
                            -1
                          )
                        )
                      | _ -> (
                          -1
                        )
                  )
                  else (
                    -1
                  )
                )
              | 7 -> (
                  if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'p' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 'm' && String.unsafe_get s (pos+6) = 's' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 8 -> (
                  if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'y' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 'e' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_fkind := (
                Some (
                  (
                    read__52
                  ) p lb
                )
              );
            | 1 ->
              field_fparams := (
                Some (
                  (
                    read_parameters
                  ) p lb
                )
              );
            | 2 ->
              field_frettype := (
                Some (
                  (
                    read__6
                  ) p lb
                )
              );
            | 3 ->
              field_fbody := (
                Some (
                  (
                    read_stmt
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            fkind = (match !field_fkind with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "fkind");
            fparams = (match !field_fparams with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "fparams");
            frettype = (match !field_frettype with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "frettype");
            fbody = (match !field_fbody with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "fbody");
          }
         : function_definition)
      )
)
and function_definition_of_string s =
  read_function_definition (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_id_info = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_id_resolved = ref (None) in
    let field_id_type = ref (None) in
    let field_id_constness = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          match len with
            | 7 -> (
                if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'd' && String.unsafe_get s (pos+2) = '_' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'y' && String.unsafe_get s (pos+5) = 'p' && String.unsafe_get s (pos+6) = 'e' then (
                  1
                )
                else (
                  -1
                )
              )
            | 11 -> (
                if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'd' && String.unsafe_get s (pos+2) = '_' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 's' && String.unsafe_get s (pos+6) = 'o' && String.unsafe_get s (pos+7) = 'l' && String.unsafe_get s (pos+8) = 'v' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 'd' then (
                  0
                )
                else (
                  -1
                )
              )
            | 12 -> (
                if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'd' && String.unsafe_get s (pos+2) = '_' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 's' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 's' && String.unsafe_get s (pos+11) = 's' then (
                  2
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_id_resolved := (
              Some (
                (
                  read__5
                ) p lb
              )
            );
          | 1 ->
            field_id_type := (
              Some (
                (
                  read__6
                ) p lb
              )
            );
          | 2 ->
            field_id_constness := (
              Some (
                (
                  read__7
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            match len with
              | 7 -> (
                  if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'd' && String.unsafe_get s (pos+2) = '_' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'y' && String.unsafe_get s (pos+5) = 'p' && String.unsafe_get s (pos+6) = 'e' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 11 -> (
                  if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'd' && String.unsafe_get s (pos+2) = '_' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 's' && String.unsafe_get s (pos+6) = 'o' && String.unsafe_get s (pos+7) = 'l' && String.unsafe_get s (pos+8) = 'v' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 'd' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 12 -> (
                  if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'd' && String.unsafe_get s (pos+2) = '_' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 's' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 's' && String.unsafe_get s (pos+11) = 's' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_id_resolved := (
                Some (
                  (
                    read__5
                  ) p lb
                )
              );
            | 1 ->
              field_id_type := (
                Some (
                  (
                    read__6
                  ) p lb
                )
              );
            | 2 ->
              field_id_constness := (
                Some (
                  (
                    read__7
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            id_resolved = (match !field_id_resolved with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "id_resolved");
            id_type = (match !field_id_type with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "id_type");
            id_constness = (match !field_id_constness with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "id_constness");
          }
         : id_info)
      )
)
and id_info_of_string s =
  read_id_info (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_item p lb = (
  read_stmt
) p lb
and item_of_string s =
  read_item (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_label_ident = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "LNone" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `LNone
            | "LId" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_label
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `LId x
            | "LInt" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__36
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `LInt x
            | "LDynamic" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_expr
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `LDynamic x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "LNone" ->
              `LNone
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "LId" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_label
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `LId x
            | "LInt" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__36
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `LInt x
            | "LDynamic" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_expr
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `LDynamic x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and label_ident_of_string s =
  read_label_ident (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_macro_definition = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_macroparams = ref (None) in
    let field_macrobody = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          match len with
            | 9 -> (
                if String.unsafe_get s pos = 'm' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'c' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'b' && String.unsafe_get s (pos+6) = 'o' && String.unsafe_get s (pos+7) = 'd' && String.unsafe_get s (pos+8) = 'y' then (
                  1
                )
                else (
                  -1
                )
              )
            | 11 -> (
                if String.unsafe_get s pos = 'm' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'c' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'p' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 'r' && String.unsafe_get s (pos+8) = 'a' && String.unsafe_get s (pos+9) = 'm' && String.unsafe_get s (pos+10) = 's' then (
                  0
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_macroparams := (
              Some (
                (
                  read__2
                ) p lb
              )
            );
          | 1 ->
            field_macrobody := (
              Some (
                (
                  read__19
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            match len with
              | 9 -> (
                  if String.unsafe_get s pos = 'm' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'c' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'b' && String.unsafe_get s (pos+6) = 'o' && String.unsafe_get s (pos+7) = 'd' && String.unsafe_get s (pos+8) = 'y' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 11 -> (
                  if String.unsafe_get s pos = 'm' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'c' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'p' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 'r' && String.unsafe_get s (pos+8) = 'a' && String.unsafe_get s (pos+9) = 'm' && String.unsafe_get s (pos+10) = 's' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_macroparams := (
                Some (
                  (
                    read__2
                  ) p lb
                )
              );
            | 1 ->
              field_macrobody := (
                Some (
                  (
                    read__19
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            macroparams = (match !field_macroparams with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "macroparams");
            macrobody = (match !field_macrobody with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "macrobody");
          }
         : macro_definition)
      )
)
and macro_definition_of_string s =
  read_macro_definition (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_module_definition = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_mbody = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          if len = 5 && String.unsafe_get s pos = 'm' && String.unsafe_get s (pos+1) = 'b' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'd' && String.unsafe_get s (pos+4) = 'y' then (
            0
          )
          else (
            -1
          )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_mbody := (
              Some (
                (
                  read_module_definition_kind
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            if len = 5 && String.unsafe_get s pos = 'm' && String.unsafe_get s (pos+1) = 'b' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'd' && String.unsafe_get s (pos+4) = 'y' then (
              0
            )
            else (
              -1
            )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_mbody := (
                Some (
                  (
                    read_module_definition_kind
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            mbody = (match !field_mbody with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "mbody");
          }
         : module_definition)
      )
)
and module_definition_of_string s =
  read_module_definition (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_module_definition_kind = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "ModuleAlias" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_dotted_ident
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ModuleAlias x
            | "ModuleStruct" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read__56
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__57
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ModuleStruct x
            | "OtherModule" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `OtherModule x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "ModuleAlias" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_dotted_ident
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `ModuleAlias x
            | "ModuleStruct" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read__56
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__57
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `ModuleStruct x
            | "OtherModule" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `OtherModule x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and module_definition_kind_of_string s =
  read_module_definition_kind (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_name = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "Id" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_id_info
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Id x
            | "IdQualified" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            fun p lb ->
                              Yojson.Safe.read_space p lb;
                              let std_tuple = Yojson.Safe.start_any_tuple p lb in
                              let len = ref 0 in
                              let end_of_tuple = ref false in
                              (try
                                let x0 =
                                  let x =
                                    (
                                      read_ident
                                    ) p lb
                                  in
                                  incr len;
                                  Yojson.Safe.read_space p lb;
                                  Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                                  x
                                in
                                let x1 =
                                  let x =
                                    (
                                      read_name_info
                                    ) p lb
                                  in
                                  incr len;
                                  (try
                                    Yojson.Safe.read_space p lb;
                                    Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                                  with Yojson.End_of_tuple -> end_of_tuple := true);
                                  x
                                in
                                if not !end_of_tuple then (
                                  try
                                    while true do
                                      Yojson.Safe.skip_json p lb;
                                      Yojson.Safe.read_space p lb;
                                      Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                                    done
                                  with Yojson.End_of_tuple -> ()
                                );
                                (x0, x1)
                              with Yojson.End_of_tuple ->
                                Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_id_info
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `IdQualified x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Id" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_id_info
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Id x
            | "IdQualified" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            fun p lb ->
                              Yojson.Safe.read_space p lb;
                              let std_tuple = Yojson.Safe.start_any_tuple p lb in
                              let len = ref 0 in
                              let end_of_tuple = ref false in
                              (try
                                let x0 =
                                  let x =
                                    (
                                      read_ident
                                    ) p lb
                                  in
                                  incr len;
                                  Yojson.Safe.read_space p lb;
                                  Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                                  x
                                in
                                let x1 =
                                  let x =
                                    (
                                      read_name_info
                                    ) p lb
                                  in
                                  incr len;
                                  (try
                                    Yojson.Safe.read_space p lb;
                                    Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                                  with Yojson.End_of_tuple -> end_of_tuple := true);
                                  x
                                in
                                if not !end_of_tuple then (
                                  try
                                    while true do
                                      Yojson.Safe.skip_json p lb;
                                      Yojson.Safe.read_space p lb;
                                      Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                                    done
                                  with Yojson.End_of_tuple -> ()
                                );
                                (x0, x1)
                              with Yojson.End_of_tuple ->
                                Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_id_info
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `IdQualified x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and name_of_string s =
  read_name (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_name_info = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_name_qualifier = ref (None) in
    let field_name_typeargs = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          match len with
            | 13 -> (
                if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'y' && String.unsafe_get s (pos+7) = 'p' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = 'a' && String.unsafe_get s (pos+10) = 'r' && String.unsafe_get s (pos+11) = 'g' && String.unsafe_get s (pos+12) = 's' then (
                  1
                )
                else (
                  -1
                )
              )
            | 14 -> (
                if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'q' && String.unsafe_get s (pos+6) = 'u' && String.unsafe_get s (pos+7) = 'a' && String.unsafe_get s (pos+8) = 'l' && String.unsafe_get s (pos+9) = 'i' && String.unsafe_get s (pos+10) = 'f' && String.unsafe_get s (pos+11) = 'i' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = 'r' then (
                  0
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_name_qualifier := (
              Some (
                (
                  read__3
                ) p lb
              )
            );
          | 1 ->
            field_name_typeargs := (
              Some (
                (
                  read__4
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            match len with
              | 13 -> (
                  if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'y' && String.unsafe_get s (pos+7) = 'p' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = 'a' && String.unsafe_get s (pos+10) = 'r' && String.unsafe_get s (pos+11) = 'g' && String.unsafe_get s (pos+12) = 's' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 14 -> (
                  if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'q' && String.unsafe_get s (pos+6) = 'u' && String.unsafe_get s (pos+7) = 'a' && String.unsafe_get s (pos+8) = 'l' && String.unsafe_get s (pos+9) = 'i' && String.unsafe_get s (pos+10) = 'f' && String.unsafe_get s (pos+11) = 'i' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = 'r' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_name_qualifier := (
                Some (
                  (
                    read__3
                  ) p lb
                )
              );
            | 1 ->
              field_name_typeargs := (
                Some (
                  (
                    read__4
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            name_qualifier = (match !field_name_qualifier with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "name_qualifier");
            name_typeargs = (match !field_name_typeargs with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "name_typeargs");
          }
         : name_info)
      )
)
and name_info_of_string s =
  read_name_info (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_name_or_dynamic = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "EN" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_name
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `EN x
            | "EDynamic" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_expr
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `EDynamic x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "EN" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_name
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `EN x
            | "EDynamic" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_expr
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `EDynamic x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and name_or_dynamic_of_string s =
  read_name_or_dynamic (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_or_type_element = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "OrConstructor" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__44
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `OrConstructor x
            | "OrEnum" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__16
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `OrEnum x
            | "OrUnion" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `OrUnion x
            | "OtherOr" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `OtherOr x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "OrConstructor" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__44
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `OrConstructor x
            | "OrEnum" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__16
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `OrEnum x
            | "OrUnion" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `OrUnion x
            | "OtherOr" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `OtherOr x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and or_type_element_of_string s =
  read_or_type_element (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_parameter = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "ParamClassic" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_parameter_classic
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ParamClassic x
            | "ParamPattern" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_pattern
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ParamPattern x
            | "ParamRest" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_parameter_classic
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ParamRest x
            | "ParamHashSplat" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_parameter_classic
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ParamHashSplat x
            | "ParamEllipsis" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ParamEllipsis x
            | "OtherParam" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `OtherParam x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "ParamClassic" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_parameter_classic
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `ParamClassic x
            | "ParamPattern" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_pattern
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `ParamPattern x
            | "ParamRest" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_parameter_classic
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `ParamRest x
            | "ParamHashSplat" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_parameter_classic
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `ParamHashSplat x
            | "ParamEllipsis" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `ParamEllipsis x
            | "OtherParam" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `OtherParam x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and parameter_of_string s =
  read_parameter (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_parameter_classic = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_pname = ref (None) in
    let field_ptype = ref (None) in
    let field_pdefault = ref (None) in
    let field_pattrs = ref (None) in
    let field_pinfo = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          match len with
            | 5 -> (
                if String.unsafe_get s pos = 'p' then (
                  match String.unsafe_get s (pos+1) with
                    | 'i' -> (
                        if String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'f' && String.unsafe_get s (pos+4) = 'o' then (
                          4
                        )
                        else (
                          -1
                        )
                      )
                    | 'n' -> (
                        if String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'e' then (
                          0
                        )
                        else (
                          -1
                        )
                      )
                    | 't' -> (
                        if String.unsafe_get s (pos+2) = 'y' && String.unsafe_get s (pos+3) = 'p' && String.unsafe_get s (pos+4) = 'e' then (
                          1
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
                else (
                  -1
                )
              )
            | 6 -> (
                if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 's' then (
                  3
                )
                else (
                  -1
                )
              )
            | 8 -> (
                if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'd' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 'f' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 'u' && String.unsafe_get s (pos+6) = 'l' && String.unsafe_get s (pos+7) = 't' then (
                  2
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_pname := (
              Some (
                (
                  read__53
                ) p lb
              )
            );
          | 1 ->
            field_ptype := (
              Some (
                (
                  read__6
                ) p lb
              )
            );
          | 2 ->
            field_pdefault := (
              Some (
                (
                  read__16
                ) p lb
              )
            );
          | 3 ->
            field_pattrs := (
              Some (
                (
                  read__49
                ) p lb
              )
            );
          | 4 ->
            field_pinfo := (
              Some (
                (
                  read_id_info
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            match len with
              | 5 -> (
                  if String.unsafe_get s pos = 'p' then (
                    match String.unsafe_get s (pos+1) with
                      | 'i' -> (
                          if String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'f' && String.unsafe_get s (pos+4) = 'o' then (
                            4
                          )
                          else (
                            -1
                          )
                        )
                      | 'n' -> (
                          if String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'e' then (
                            0
                          )
                          else (
                            -1
                          )
                        )
                      | 't' -> (
                          if String.unsafe_get s (pos+2) = 'y' && String.unsafe_get s (pos+3) = 'p' && String.unsafe_get s (pos+4) = 'e' then (
                            1
                          )
                          else (
                            -1
                          )
                        )
                      | _ -> (
                          -1
                        )
                  )
                  else (
                    -1
                  )
                )
              | 6 -> (
                  if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 's' then (
                    3
                  )
                  else (
                    -1
                  )
                )
              | 8 -> (
                  if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'd' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 'f' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 'u' && String.unsafe_get s (pos+6) = 'l' && String.unsafe_get s (pos+7) = 't' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_pname := (
                Some (
                  (
                    read__53
                  ) p lb
                )
              );
            | 1 ->
              field_ptype := (
                Some (
                  (
                    read__6
                  ) p lb
                )
              );
            | 2 ->
              field_pdefault := (
                Some (
                  (
                    read__16
                  ) p lb
                )
              );
            | 3 ->
              field_pattrs := (
                Some (
                  (
                    read__49
                  ) p lb
                )
              );
            | 4 ->
              field_pinfo := (
                Some (
                  (
                    read_id_info
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            pname = (match !field_pname with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "pname");
            ptype = (match !field_ptype with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "ptype");
            pdefault = (match !field_pdefault with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "pdefault");
            pattrs = (match !field_pattrs with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "pattrs");
            pinfo = (match !field_pinfo with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "pinfo");
          }
         : parameter_classic)
      )
)
and parameter_classic_of_string s =
  read_parameter_classic (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_parameters p lb = (
  read__43
) p lb
and parameters_of_string s =
  read_parameters (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_pattern = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "PatLiteral" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_literal
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `PatLiteral x
            | "PatConstructor" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_dotted_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__38
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `PatConstructor x
            | "PatRecord" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__40
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `PatRecord x
            | "PatId" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_id_info
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `PatId x
            | "PatTuple" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__41
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `PatTuple x
            | "PatList" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__41
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `PatList x
            | "PatKeyVal" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_pattern
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_pattern
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `PatKeyVal x
            | "PatUnderscore" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `PatUnderscore x
            | "PatDisj" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_pattern
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_pattern
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `PatDisj x
            | "PatTyped" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_pattern
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `PatTyped x
            | "PatWhen" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_pattern
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `PatWhen x
            | "PatAs" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_pattern
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            fun p lb ->
                              Yojson.Safe.read_space p lb;
                              let std_tuple = Yojson.Safe.start_any_tuple p lb in
                              let len = ref 0 in
                              let end_of_tuple = ref false in
                              (try
                                let x0 =
                                  let x =
                                    (
                                      read_ident
                                    ) p lb
                                  in
                                  incr len;
                                  Yojson.Safe.read_space p lb;
                                  Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                                  x
                                in
                                let x1 =
                                  let x =
                                    (
                                      read_id_info
                                    ) p lb
                                  in
                                  incr len;
                                  (try
                                    Yojson.Safe.read_space p lb;
                                    Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                                  with Yojson.End_of_tuple -> end_of_tuple := true);
                                  x
                                in
                                if not !end_of_tuple then (
                                  try
                                    while true do
                                      Yojson.Safe.skip_json p lb;
                                      Yojson.Safe.read_space p lb;
                                      Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                                    done
                                  with Yojson.End_of_tuple -> ()
                                );
                                (x0, x1)
                              with Yojson.End_of_tuple ->
                                Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `PatAs x
            | "PatType" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_type_
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `PatType x
            | "PatVar" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__42
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `PatVar x
            | "PatEllipsis" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `PatEllipsis x
            | "DisjPat" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_pattern
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_pattern
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `DisjPat x
            | "OtherPat" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `OtherPat x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "PatLiteral" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_literal
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `PatLiteral x
            | "PatConstructor" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_dotted_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__38
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `PatConstructor x
            | "PatRecord" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__40
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `PatRecord x
            | "PatId" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_id_info
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `PatId x
            | "PatTuple" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__41
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `PatTuple x
            | "PatList" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__41
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `PatList x
            | "PatKeyVal" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_pattern
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_pattern
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `PatKeyVal x
            | "PatUnderscore" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `PatUnderscore x
            | "PatDisj" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_pattern
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_pattern
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `PatDisj x
            | "PatTyped" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_pattern
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `PatTyped x
            | "PatWhen" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_pattern
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `PatWhen x
            | "PatAs" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_pattern
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            fun p lb ->
                              Yojson.Safe.read_space p lb;
                              let std_tuple = Yojson.Safe.start_any_tuple p lb in
                              let len = ref 0 in
                              let end_of_tuple = ref false in
                              (try
                                let x0 =
                                  let x =
                                    (
                                      read_ident
                                    ) p lb
                                  in
                                  incr len;
                                  Yojson.Safe.read_space p lb;
                                  Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                                  x
                                in
                                let x1 =
                                  let x =
                                    (
                                      read_id_info
                                    ) p lb
                                  in
                                  incr len;
                                  (try
                                    Yojson.Safe.read_space p lb;
                                    Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                                  with Yojson.End_of_tuple -> end_of_tuple := true);
                                  x
                                in
                                if not !end_of_tuple then (
                                  try
                                    while true do
                                      Yojson.Safe.skip_json p lb;
                                      Yojson.Safe.read_space p lb;
                                      Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                                    done
                                  with Yojson.End_of_tuple -> ()
                                );
                                (x0, x1)
                              with Yojson.End_of_tuple ->
                                Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `PatAs x
            | "PatType" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_type_
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `PatType x
            | "PatVar" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__42
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `PatVar x
            | "PatEllipsis" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `PatEllipsis x
            | "DisjPat" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_pattern
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_pattern
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `DisjPat x
            | "OtherPat" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `OtherPat x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and pattern_of_string s =
  read_pattern (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_qualifier = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "QTop" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `QTop x
            | "QDots" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_dotted_ident
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `QDots x
            | "QExpr" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `QExpr x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "QTop" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `QTop x
            | "QDots" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_dotted_ident
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `QDots x
            | "QExpr" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `QExpr x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and qualifier_of_string s =
  read_qualifier (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_stmt = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_s = ref (None) in
    let field_s_id = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          match len with
            | 1 -> (
                if String.unsafe_get s pos = 's' then (
                  0
                )
                else (
                  -1
                )
              )
            | 4 -> (
                if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = '_' && String.unsafe_get s (pos+2) = 'i' && String.unsafe_get s (pos+3) = 'd' then (
                  1
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_s := (
              Some (
                (
                  read_stmt_kind
                ) p lb
              )
            );
          | 1 ->
            field_s_id := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            match len with
              | 1 -> (
                  if String.unsafe_get s pos = 's' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 4 -> (
                  if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = '_' && String.unsafe_get s (pos+2) = 'i' && String.unsafe_get s (pos+3) = 'd' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_s := (
                Some (
                  (
                    read_stmt_kind
                  ) p lb
                )
              );
            | 1 ->
              field_s_id := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            s = (match !field_s with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "s");
            s_id = (match !field_s_id with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "s_id");
          }
         : stmt)
      )
)
and stmt_of_string s =
  read_stmt (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_stmt_kind = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "ExprStmt" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_sc
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `ExprStmt x
            | "Block" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__30
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Block x
            | "If" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_stmt
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x3 =
                        let x =
                          (
                            read__31
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2, x3)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2; 3 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `If x
            | "While" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_stmt
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `While x
            | "Return" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__16
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_sc
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Return x
            | "DoWhile" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_stmt
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `DoWhile x
            | "For" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_for_header
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_stmt
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `For x
            | "Switch" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__16
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read__32
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Switch x
            | "Continue" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_label_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_sc
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Continue x
            | "Break" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_label_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_sc
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Break x
            | "Label" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_label
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_stmt
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Label x
            | "Goto" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_label
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Goto x
            | "Throw" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_sc
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Throw x
            | "Try" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_stmt
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read__33
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x3 =
                        let x =
                          (
                            read__34
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2, x3)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2; 3 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Try x
            | "WithUsingResource" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_stmt
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_stmt
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `WithUsingResource x
            | "Assert" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read__16
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x3 =
                        let x =
                          (
                            read_sc
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2, x3)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2; 3 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Assert x
            | "DefStmt" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_definition
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `DefStmt x
            | "DirectiveStmt" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_directive
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `DirectiveStmt x
            | "DisjStmt" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_stmt
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_stmt
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `DisjStmt x
            | "OtherStmtWithStmt" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__16
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_stmt
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `OtherStmtWithStmt x
            | "OtherStmt" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `OtherStmt x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "ExprStmt" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_sc
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `ExprStmt x
            | "Block" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__30
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Block x
            | "If" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_stmt
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x3 =
                        let x =
                          (
                            read__31
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2, x3)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2; 3 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `If x
            | "While" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_stmt
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `While x
            | "Return" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__16
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_sc
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Return x
            | "DoWhile" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_stmt
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `DoWhile x
            | "For" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_for_header
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_stmt
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `For x
            | "Switch" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__16
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read__32
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Switch x
            | "Continue" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_label_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_sc
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Continue x
            | "Break" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_label_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_sc
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Break x
            | "Label" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_label
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_stmt
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Label x
            | "Goto" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_label
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Goto x
            | "Throw" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_sc
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Throw x
            | "Try" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_stmt
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read__33
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x3 =
                        let x =
                          (
                            read__34
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2, x3)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2; 3 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Try x
            | "WithUsingResource" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_stmt
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_stmt
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `WithUsingResource x
            | "Assert" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_expr
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read__16
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x3 =
                        let x =
                          (
                            read_sc
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2, x3)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2; 3 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Assert x
            | "DefStmt" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_definition
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `DefStmt x
            | "DirectiveStmt" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_directive
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `DirectiveStmt x
            | "DisjStmt" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_stmt
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_stmt
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `DisjStmt x
            | "OtherStmtWithStmt" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__16
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_stmt
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `OtherStmtWithStmt x
            | "OtherStmt" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `OtherStmt x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and stmt_kind_of_string s =
  read_stmt_kind (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_type_ = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "TyBuiltin" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__1
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `TyBuiltin x
            | "TyFun" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read__43
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `TyFun x
            | "TyArray" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read__27
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `TyArray x
            | "TyTuple" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__45
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `TyTuple x
            | "TyN" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_name
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `TyN x
            | "TyNameApply" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_dotted_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_type_arguments
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `TyNameApply x
            | "TyVar" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_ident
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `TyVar x
            | "TyAny" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `TyAny x
            | "TyPointer" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `TyPointer x
            | "TyRef" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `TyRef x
            | "TyQuestion" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `TyQuestion x
            | "TyRest" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `TyRest x
            | "TyAnd" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `TyAnd x
            | "TyOr" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `TyOr x
            | "TyRecordAnon" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__11
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `TyRecordAnon x
            | "TyInterfaceAnon" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__11
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `TyInterfaceAnon x
            | "TyEllipsis" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `TyEllipsis x
            | "OtherType" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `OtherType x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "TyBuiltin" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__1
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `TyBuiltin x
            | "TyFun" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read__43
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `TyFun x
            | "TyArray" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read__27
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `TyArray x
            | "TyTuple" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__45
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `TyTuple x
            | "TyN" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_name
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `TyN x
            | "TyNameApply" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_dotted_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_type_arguments
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `TyNameApply x
            | "TyVar" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_ident
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `TyVar x
            | "TyAny" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `TyAny x
            | "TyPointer" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `TyPointer x
            | "TyRef" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `TyRef x
            | "TyQuestion" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `TyQuestion x
            | "TyRest" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `TyRest x
            | "TyAnd" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `TyAnd x
            | "TyOr" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_type_
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `TyOr x
            | "TyRecordAnon" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__11
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `TyRecordAnon x
            | "TyInterfaceAnon" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__11
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `TyInterfaceAnon x
            | "TyEllipsis" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `TyEllipsis x
            | "OtherType" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `OtherType x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and type__of_string s =
  read_type_ (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_type_argument = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "TypeArg" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_type_
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `TypeArg x
            | "TypeWildcard" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__47
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `TypeWildcard x
            | "TypeLifetime" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_ident
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `TypeLifetime x
            | "OtherTypeArg" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `OtherTypeArg x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "TypeArg" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_type_
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `TypeArg x
            | "TypeWildcard" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__47
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `TypeWildcard x
            | "TypeLifetime" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_ident
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `TypeLifetime x
            | "OtherTypeArg" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `OtherTypeArg x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and type_argument_of_string s =
  read_type_argument (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_type_arguments p lb = (
  read__46
) p lb
and type_arguments_of_string s =
  read_type_arguments (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_type_definition = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_tbody = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          if len = 5 && String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 'b' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'd' && String.unsafe_get s (pos+4) = 'y' then (
            0
          )
          else (
            -1
          )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_tbody := (
              Some (
                (
                  read_type_definition_kind
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            if len = 5 && String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 'b' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'd' && String.unsafe_get s (pos+4) = 'y' then (
              0
            )
            else (
              -1
            )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_tbody := (
                Some (
                  (
                    read_type_definition_kind
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            tbody = (match !field_tbody with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "tbody");
          }
         : type_definition)
      )
)
and type_definition_of_string s =
  read_type_definition (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_type_definition_kind = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "OrType" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__54
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `OrType x
            | "AndType" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__11
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `AndType x
            | "AliasType" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_type_
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `AliasType x
            | "NewType" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_type_
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `NewType x
            | "Exception" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__44
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Exception x
            | "OtherTypeKind" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `OtherTypeKind x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "OrType" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__54
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `OrType x
            | "AndType" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__11
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `AndType x
            | "AliasType" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_type_
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `AliasType x
            | "NewType" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_type_
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `NewType x
            | "Exception" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__44
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Exception x
            | "OtherTypeKind" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `OtherTypeKind x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and type_definition_kind_of_string s =
  read_type_definition_kind (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_type_parameter = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read_ident
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read__51
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
)
and type_parameter_of_string s =
  read_type_parameter (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_type_parameter_constraint = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "Extends" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_type_
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Extends x
            | "HasConstructor" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `HasConstructor x
            | "OtherTypeParam" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `OtherTypeParam x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Extends" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_type_
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `Extends x
            | "HasConstructor" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `HasConstructor x
            | "OtherTypeParam" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            Atdgen_runtime.Oj_run.read_string
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read__19
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `OtherTypeParam x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and type_parameter_constraint_of_string s =
  read_type_parameter_constraint (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_variable_definition = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_vinit = ref (None) in
    let field_vtype = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          if len = 5 && String.unsafe_get s pos = 'v' then (
            match String.unsafe_get s (pos+1) with
              | 'i' -> (
                  if String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 't' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 't' -> (
                  if String.unsafe_get s (pos+2) = 'y' && String.unsafe_get s (pos+3) = 'p' && String.unsafe_get s (pos+4) = 'e' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
          )
          else (
            -1
          )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_vinit := (
              Some (
                (
                  read__16
                ) p lb
              )
            );
          | 1 ->
            field_vtype := (
              Some (
                (
                  read__6
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            if len = 5 && String.unsafe_get s pos = 'v' then (
              match String.unsafe_get s (pos+1) with
                | 'i' -> (
                    if String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 't' then (
                      0
                    )
                    else (
                      -1
                    )
                  )
                | 't' -> (
                    if String.unsafe_get s (pos+2) = 'y' && String.unsafe_get s (pos+3) = 'p' && String.unsafe_get s (pos+4) = 'e' then (
                      1
                    )
                    else (
                      -1
                    )
                  )
                | _ -> (
                    -1
                  )
            )
            else (
              -1
            )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_vinit := (
                Some (
                  (
                    read__16
                  ) p lb
                )
              );
            | 1 ->
              field_vtype := (
                Some (
                  (
                    read__6
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            vinit = (match !field_vinit with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "vinit");
            vtype = (match !field_vtype with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "vtype");
          }
         : variable_definition)
      )
)
and variable_definition_of_string s =
  read_variable_definition (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_xml = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_xml_kind = ref (None) in
    let field_xml_attrs = ref (None) in
    let field_xml_body = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          match len with
            | 8 -> (
                if String.unsafe_get s pos = 'x' && String.unsafe_get s (pos+1) = 'm' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = '_' then (
                  match String.unsafe_get s (pos+4) with
                    | 'b' -> (
                        if String.unsafe_get s (pos+5) = 'o' && String.unsafe_get s (pos+6) = 'd' && String.unsafe_get s (pos+7) = 'y' then (
                          2
                        )
                        else (
                          -1
                        )
                      )
                    | 'k' -> (
                        if String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'd' then (
                          0
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
                else (
                  -1
                )
              )
            | 9 -> (
                if String.unsafe_get s pos = 'x' && String.unsafe_get s (pos+1) = 'm' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'r' && String.unsafe_get s (pos+8) = 's' then (
                  1
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_xml_kind := (
              Some (
                (
                  read_xml_kind
                ) p lb
              )
            );
          | 1 ->
            field_xml_attrs := (
              Some (
                (
                  read__25
                ) p lb
              )
            );
          | 2 ->
            field_xml_body := (
              Some (
                (
                  read__26
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            match len with
              | 8 -> (
                  if String.unsafe_get s pos = 'x' && String.unsafe_get s (pos+1) = 'm' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = '_' then (
                    match String.unsafe_get s (pos+4) with
                      | 'b' -> (
                          if String.unsafe_get s (pos+5) = 'o' && String.unsafe_get s (pos+6) = 'd' && String.unsafe_get s (pos+7) = 'y' then (
                            2
                          )
                          else (
                            -1
                          )
                        )
                      | 'k' -> (
                          if String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'd' then (
                            0
                          )
                          else (
                            -1
                          )
                        )
                      | _ -> (
                          -1
                        )
                  )
                  else (
                    -1
                  )
                )
              | 9 -> (
                  if String.unsafe_get s pos = 'x' && String.unsafe_get s (pos+1) = 'm' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'r' && String.unsafe_get s (pos+8) = 's' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_xml_kind := (
                Some (
                  (
                    read_xml_kind
                  ) p lb
                )
              );
            | 1 ->
              field_xml_attrs := (
                Some (
                  (
                    read__25
                  ) p lb
                )
              );
            | 2 ->
              field_xml_body := (
                Some (
                  (
                    read__26
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            xml_kind = (match !field_xml_kind with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "xml_kind");
            xml_attrs = (match !field_xml_attrs with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "xml_attrs");
            xml_body = (match !field_xml_body with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "xml_body");
          }
         : xml)
      )
)
and xml_of_string s =
  read_xml (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_xml_attr_value p lb = (
  read_expr
) p lb
and xml_attr_value_of_string s =
  read_xml_attr_value (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_xml_attribute = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "XmlAttr" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_xml_attr_value
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `XmlAttr x
            | "XmlAttrExpr" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__15
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `XmlAttrExpr x
            | "XmlEllipsis" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `XmlEllipsis x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "XmlAttr" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  fun p lb ->
                    Yojson.Safe.read_space p lb;
                    let std_tuple = Yojson.Safe.start_any_tuple p lb in
                    let len = ref 0 in
                    let end_of_tuple = ref false in
                    (try
                      let x0 =
                        let x =
                          (
                            read_ident
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x1 =
                        let x =
                          (
                            read_tok
                          ) p lb
                        in
                        incr len;
                        Yojson.Safe.read_space p lb;
                        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        x
                      in
                      let x2 =
                        let x =
                          (
                            read_xml_attr_value
                          ) p lb
                        in
                        incr len;
                        (try
                          Yojson.Safe.read_space p lb;
                          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                        with Yojson.End_of_tuple -> end_of_tuple := true);
                        x
                      in
                      if not !end_of_tuple then (
                        try
                          while true do
                            Yojson.Safe.skip_json p lb;
                            Yojson.Safe.read_space p lb;
                            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
                          done
                        with Yojson.End_of_tuple -> ()
                      );
                      (x0, x1, x2)
                    with Yojson.End_of_tuple ->
                      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `XmlAttr x
            | "XmlAttrExpr" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__15
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `XmlAttrExpr x
            | "XmlEllipsis" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_tok
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `XmlEllipsis x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and xml_attribute_of_string s =
  read_xml_attribute (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
and read_xml_body = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "XmlText" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__1
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `XmlText x
            | "XmlExpr" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__27
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `XmlExpr x
            | "XmlXml" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_xml
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `XmlXml x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "XmlText" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__1
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `XmlText x
            | "XmlExpr" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__27
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `XmlExpr x
            | "XmlXml" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_xml
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `XmlXml x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
and xml_body_of_string s =
  read_xml_body (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_wrap_ write__a = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _ = x in
    (
      write__a
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
let string_of_wrap_ write__a ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_wrap_ write__a ob x;
  Bi_outbuf.contents ob
let read_wrap_ read__a = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read__a
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1 ]);
)
let wrap__of_string read__a s =
  read_wrap_ read__a (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_program = (
  write__57
)
let string_of_program ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_program ob x;
  Bi_outbuf.contents ob
let read_program = (
  read__57
)
let program_of_string s =
  read_program (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_bracket write__a = (
  fun ob x ->
    Bi_outbuf.add_char ob '[';
    (let x, _, _ = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, x, _ = x in
    (
      write__a
    ) ob x
    );
    Bi_outbuf.add_char ob ',';
    (let _, _, x = x in
    (
      write_tok
    ) ob x
    );
    Bi_outbuf.add_char ob ']';
)
let string_of_bracket write__a ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_bracket write__a ob x;
  Bi_outbuf.contents ob
let read_bracket read__a = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    let std_tuple = Yojson.Safe.start_any_tuple p lb in
    let len = ref 0 in
    let end_of_tuple = ref false in
    (try
      let x0 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x1 =
        let x =
          (
            read__a
          ) p lb
        in
        incr len;
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        x
      in
      let x2 =
        let x =
          (
            read_tok
          ) p lb
        in
        incr len;
        (try
          Yojson.Safe.read_space p lb;
          Yojson.Safe.read_tuple_sep2 p std_tuple lb;
        with Yojson.End_of_tuple -> end_of_tuple := true);
        x
      in
      if not !end_of_tuple then (
        try
          while true do
            Yojson.Safe.skip_json p lb;
            Yojson.Safe.read_space p lb;
            Yojson.Safe.read_tuple_sep2 p std_tuple lb;
          done
        with Yojson.End_of_tuple -> ()
      );
      (x0, x1, x2)
    with Yojson.End_of_tuple ->
      Atdgen_runtime.Oj_run.missing_tuple_fields p !len [ 0; 1; 2 ]);
)
let bracket_of_string read__a s =
  read_bracket read__a (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
