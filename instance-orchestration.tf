resource "google_compute_instance" "orchestration" {
    name = "terraformer"
    machine_type = "f1-micro"
    
    tags = ["orchestration", "terraform"]
    zone = "us-central1-c"
    
    disk {
        image = "ubuntu-1404-trusty-v20160311"
        size = "80"
    }

    network_interface {
        network = "default"
        access_config {
            // Ephemeral IP
        }
    }

    metadata_startup_script = "echo hi > ~/test.txt"

    service_account {
        scopes = ["userinfo-email", "compute-ro", "storage-ro"]
    }
}
