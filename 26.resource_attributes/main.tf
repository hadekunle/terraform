




 resource "time_static" "time_update" {
}

resource "local_file" "time" {
  filename = "/root/time.txt"
  content = "Time stamp of this file is ${time_static.time_update.id}"
}

output "test_description" {
  value = "${local_file.time.content}"
}
