#creates users: jenny,  rose, lisa, jisoo with for_each

resource "aws_iam_user" "lb" {
  for_each = toset([
    "jenny",
    "rose",
    "lisa",
    "jisov"
    ])  
  name = each.key
}

#create group blackpink

resource "aws_iam_group" "employees" {
  name = "blackpink"
}

#add users: jenny,  rose, lisa, jisoo to the blackpink group with for loop

resource "aws_iam_group_membership" "team" {
   name = "tf-testing-group-membership"

   users = [
      for i in aws_iam_user.lb : i.name
   ]

   group = aws_iam_group.employees.name
 }