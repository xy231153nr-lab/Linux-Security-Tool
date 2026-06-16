int status=0;
static void activate(GtkApplication*app,gpointer user_data)
{
  GtkWidget*window;
  window=gtk_application_window_new(app);
  gtk_window_set_title(GTK_WINDOW(window),"LST App");
  gtk_window_set_default_size(GTK_WINDOW(window),100,100);
  gtk_window_present(GTK_WINDOW(window));
}
