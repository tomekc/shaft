package shaft

import groovyx.net.http.*
import static groovyx.net.http.ContentType.*
import static groovyx.net.http.Method.*

class DashboardController {

    def index() {


        def pivotal = new RESTClient( "http://www.pivotaltracker.com" )
        def resp = pivotal.get(
            path : "/services/v3/projects",
            //contentType : "text/xml",
            headers : [ "X-TrackerToken" : grailsApplication.config.pivotal.token ]
        )

        [ "xml" : resp.data ]
    }
}
