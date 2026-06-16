#include<gtk/gtk.h>
#include"setup.h"
int main(int argc,char**argv)
{
  Gtk_application_new*app;
  app=gtk_aplication_new("org.gtk.LST",G_APPLICATION_DEFAULT_FLAGS);
  g_signal_connect(app,"activate",G_CALLBACK(activate),NULL);
  status=g_application_run(G_APPLICATION(app),argc,argv);
  g_object_unref(app);
  return status;
}
