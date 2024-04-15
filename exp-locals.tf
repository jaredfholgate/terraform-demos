# Demo 1
locals {
  # a: Equality check
  is_hello = var.hello == "hello"

  # b: Ternary operator
  ternary_result = var.hello == "hello" ? "yes" : "no"

  # c: String concatenation
  demo_concatenated = "${var.hello}-${var.world} ::: Is Hello: ${local.is_hello} ::: Is Hello Ternary: ${local.ternary_result}"

  demo_01 = {
    a_is_hello          = local.is_hello
    b_ternary_result    = local.ternary_result
    c_demo_concatenated = local.demo_concatenated
  }
}

# Demo 2
locals {
  pi_text = "pi"

  # a: String concatenation with different data types
  pi_string = "${local.pi_text} ${var.pi}"

  # b: Format functionn for string concatenation
  many_pi_template = "%s %s %s %s %s %s"
  many_pi_string   = format(local.many_pi_template, local.pi_text, local.pi_text, local.pi_text, local.pi_text, local.pi_text, var.pi)

  # c: and d: Format function for number formatting
  pi_string_20_dp = "${local.pi_text} ${format("%.20f", var.pi)}"
  pi_string_2_dp  = "${local.pi_text} ${format("%.2f", var.pi)}"

  # e: Ternary with greater than
  is_pi_greater_than_3     = var.pi > 3
  pi_greater_than_3_string = local.is_pi_greater_than_3 ? "yes it is!" : "no it is not..."

  demo_02 = {
    a_pi_string                = local.pi_string
    b_many_pi_string           = local.many_pi_string
    c_pi_string_20_dp          = local.pi_string_20_dp
    d_pi_string_2_dp           = local.pi_string_2_dp
    e_pi_greater_than_3_string = local.pi_greater_than_3_string
  }
}

# Demo 3
locals {
  # a: Join function
  my_array     = ["a", "b", "c", "d", "e"]
  joined_array = join("-", local.my_array)

  # b: Split function
  my_string    = "f,g,h,i,j,k,l"
  split_string = split(",", local.my_string)

  # c: and d: Keys and Values functions
  my_number_map = {
    "a" = 1
    "b" = 2
    "c" = 3
    "d" = 4
    "e" = 5
    "f" = 6
  }
  keys   = keys(local.my_number_map)
  values = values(local.my_number_map)

  # e: Map for function
  my_number_map_2 = { for key, value in local.my_number_map : key => value * 2 }

  demo_03 = {
    a_joined_array    = local.joined_array
    b_split_string    = local.split_string
    c_keys            = local.keys
    d_values          = local.values
    e_my_number_map_2 = local.my_number_map_2
  }
}