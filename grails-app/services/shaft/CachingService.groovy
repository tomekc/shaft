package shaft

class CachingService {

    static transactional = true

    def storeProject(Long id,String name) {
        def sp = Project.findByPivotalId(id)
        if (sp != null) {
            sp.name = name
            sp.save()
        } else {

            def p = new Project()
            p.pivotalId = id
            p.name = name
            p.save()
        }
    }



}
