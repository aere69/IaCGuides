# Count Meta-Argument

The count argument accepts a whole number, and creates that many instances of the resource.

When using count, you can make use of `count.index`, allowing for better flexibility. This attribute holds a distinct index number, starting form 0, that uniquely identifies each instance created by the count meta-argument.

Within CLI output, you will be able to see the index value resource. (i.e. # aws_instance.first_ec2[0] will be created ...)

## Challenges with Count

The instances created through count are identical copies.
You might want to customize certain properties for each one.

### Example1

Create a tag:Name referencing the count index

```sh
  tags = {
    Name = "payments-system-${count.index}"
  }
```

### Example2

Assign user names from a list of names.

```sh
variable "users" {
  type = list
  default = ["john", "peter", "may","summer","mrT"]
}

resource "aws_iam_user" "that" {
  name = var.users[count.index]
  count = 5
}
```

## [Sample Code](./main.tf)
