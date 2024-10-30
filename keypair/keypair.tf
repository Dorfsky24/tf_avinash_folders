
# RSA key of size 4096 bits
resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
# Local file
resource "local_file" "tf_key" {
  filename = "tfkey"
  content  = tls_private_key.rsa.private_key_pem
}
#Keypair
resource "aws_key_pair" "tf_key" {
  key_name   = "tf_key"
  public_key = tls_private_key.rsa.public_key_openssh
}
