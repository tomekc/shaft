package shaft

import groovyx.net.http.*
import static groovyx.net.http.ContentType.*
import static groovyx.net.http.Method.*

class DashboardController {

    CachingService cachingService

    def index() {


        def pivotal = new RESTClient( "http://www.pivotaltracker.com" )
        def resp = pivotal.get(
            path : "/services/v3/projects",
            //contentType : "text/xml",
            headers : [ "X-TrackerToken" : grailsApplication.config.pivotal.token ]
        )

        def projectList = resp.data.project

        saveProjects(projectList)


        [ "projects" : projectList ]
    }


    // ------------------------------------------------------------------------------------

    private void saveProjects(projectList) {
        projectList.each({
            // it.id, it.name
            def ident = it.id.text()
            def lident = ident as Long

//            log.info(ident.getClass())

            log.info("Ident ${ident} -> ${it.name}")
            cachingService.storeProject(lident, it.name.text())
        })
    }
}
