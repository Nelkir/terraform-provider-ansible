resource "ansible_playbook" "test_playbook" {
  playbook = "/home/apanfilkin/git/work/terraform-provider-ansible/terraform-test/playbook.yml"

  become = false

  name = "playbook"

  extra_vars = "{ \"key1\" : \"value1\" }"
}
