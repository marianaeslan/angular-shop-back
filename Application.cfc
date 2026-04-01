component {

    this.name = "AngularShop";
    this.applicationTimeout = createTimeSpan(1, 0, 0, 0);
    this.mappings["/"] = getDirectoryFromPath(getCurrentTemplatePath());
    this.preserveCaseForStructKey = true;

    public boolean function onApplicationStart() {

        return true;
    }

    public boolean function onRequestStart(string targetPage) {

        if (url.keyExists("reload")) {
            applicationStop();
            writeOutput('{"status": "Aplicacao reiniciada"}');
            abort;
        }

        var response = getPageContext().getResponse();
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE, OPTIONS");
        response.setHeader("Access-Control-Allow-Headers", "Content-Type, Authorization");

        if (cgi.request_method == "OPTIONS") {
            abort;
        }

        return true;
    }

}

