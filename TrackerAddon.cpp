#include <Alert.h>
#include <String.h>
#include <Application.h>
#include <InterfaceKit.h>
#include <StorageKit.h>
#include <stdio.h>
#include <string.h>
#include <Roster.h>
extern "C" {
	
void
process_refs(entry_ref dir_ref, BMessage* msg, void* reserved)
{
	BString out("/bin/convert ");
	BPath path;
	BEntry entry(&dir_ref);
	entry.GetPath(&path);
	entry_ref ref;
	if (msg->FindRef("refs",0,&ref) == B_OK)
	{
		out << "-rotate 90 '" << path.Path() << "/" << ref.name << "' '" << path.Path() << "/" << ref.name << "'";
	}
	
	//BAlert* alert = new BAlert("RotateAddon",out.String(),"OK");
	//alert->Go();
	
	system(out.String());
}

}
