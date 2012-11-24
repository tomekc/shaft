class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

        "/project/$id" (controller: "project")



		"/" (controller: "dashboard", view:"/index")


		"500"(view:'/error')
	}
}
