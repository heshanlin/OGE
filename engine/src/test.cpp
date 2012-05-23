#include <iostream>
#include <fstream>
#include "oge_workflow.h"
#include "oge_plugin.h"
#include "oge_catalog.h"
#include "oge_engine.h"
#include <stdlib.h>
#include <string>
#include <cstring>
using namespace std;
int main(int argc, char **argv)
{
    //    Workflow w("imported_variant_calling.xml");
    //    w.buildXml("workflow_example_out.xml");
    //    w.print();
    //Plugin p("plugin_example.xml");
    //p.printOutputs();
    if(argc < 2) {
        cerr << "Usage: " << argv[0] << " <engine_root>" << endl;
        return 1;
    }

    Engine e(argv[1]);
    e.listPluginOutput("dindel");
    e.findPluginInput("dindel", "dfsd");
    return 0;
}
