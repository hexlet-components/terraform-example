terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      // Версия может обновиться
      version = "~> 2.0"
    }
  }
}

variable "do_token" {
  sensitive = true
}

provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "web1" {
  image  = "ubuntu-22-04-x64"
  name   = "web-1"
  region = "ams3"
  size   = "s-1vcpu-1gb"
}

resource "digitalocean_droplet" "web2" {
  image  = "ubuntu-22-04-x64"
  name   = "web-2"
  region = "ams3"
  size   = "s-1vcpu-1gb"
}
