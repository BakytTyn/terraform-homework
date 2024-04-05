resource "aws_iam_user" "lb" {
  name = "Jenny"
}

resource "aws_iam_user" "lb2" {
  name = "Rose"
}

resource "aws_iam_user" "lb3" {
  name = "Lisa"
}

resource "aws_iam_user" "lb4" {
  name = "Jisco"
}

resource "aws_iam_user" "lb5" {
  name = "Jihyo"
}
resource "aws_iam_user" "lb6" {
  name = "Sana"
}
resource "aws_iam_user" "lb7" {
  name = "Momo"
}
resource "aws_iam_user" "lb8" {
  name = "Dahyun"
}

resource "aws_iam_group" "hi" {
  name = "blackpink"
}

resource "aws_iam_group" "hi2" {
  name = "twice"
}

resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.lb.name,
    aws_iam_user.lb2.name,
    aws_iam_user.lb3.name,
    aws_iam_user.lb4.name,
    aws_iam_user.lb9.name, #add new user Miyeon

  ]

  group = aws_iam_group.hi.name
}

resource "aws_iam_group_membership" "team2" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.lb5.name,
    aws_iam_user.lb6.name,
    aws_iam_user.lb7.name,
    aws_iam_user.lb8.name,
    aws_iam_user.lb10.name, #add new user Mina 
  ]

  group = aws_iam_group.hi2.name
}

#terraform import aws_iam_user.lb9 hi

resource "aws_iam_user" "lb9" {  
  name = "Miyeon"
}

#terraform import aws_iam_user.lb10 hi

resource "aws_iam_user" "lb10" {
  name = "Mina"
}



