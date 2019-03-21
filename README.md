# A example Docker setup to run SimData

* Details at [dev.splunk.com](http://dev.splunk.com/view/simdata/SP-CAAAFGD)

## Requirements

* Make
* Docker

## Usage

* `make up`
    * Spins up Splunk and the SimData container with the active simulation
* `make down`
    * Tears down Splunk & Simdata
* Splunk Instance available at http://localhost:8000
    * Login `admin` & `changeme`