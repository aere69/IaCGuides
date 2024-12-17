# Data Types in Terraform

| Data Type | Description |
| ------ | ----------- |
| string | a sequence of Unicode characters reresenting some text. (i.e. "hello") |
| number | a numeric value. (i.e. 1 or 75.5) |
| bool | a boolean value, either true or false |
| list | a sequence of values. Allows you to store and manage a collection of values (i.e. ["us-west-1a", "us-west-1c"]) |
| set | a collection of unique values that do not have any secondary identifiers or ordering. (i.e. ["sg-131282", "sg-123183"]) |
| map | a group of values identified by name lables. Allows you to store and manage a collection of key-value pairs. (i.e. {name="mabel", age=52}) |
| object | Unlike a map and list, an object is a structural type that can hold several types of values. It is a set of named attributes, each with its own type. (i.e. {name="instnce-1", instances=4, keys=["key1.pem","key2.pem"], ami="ami-05f3392e2d63afc18"}) |
| null | a value that represents absence or omission. |

## Examples

### Example 1 - List

```sh
variable "my-list" {
    type = list
    default = ["hello","world","hello"]
}

output "mylist" {
    value = var.my-list
}
```

### Example 2 - SET

```sh
variable "my-set" {
    type = set(string)
    default = ["alice","bob","john"]
}

output "myset" {
    value = var.my-set
}
```

### Example 3 - MAP

```sh
variable "my-map" {
    type = map
    default = {
        Name = "app-server"
        Environment = "development"
        Team = "payments"
    }
}

output "mymap" {
    value = var.my-map
}
```
