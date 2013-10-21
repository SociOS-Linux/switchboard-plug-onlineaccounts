/* gSignon-1.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "GSignond", gir_namespace = "gSignond", gir_version = "1.0", lower_case_cprefix = "gsignond_")]
namespace Signond {
	[CCode (cheader_filename = "gsignond/gsignond-extension-interface.h", type_id = "gsignond_extension_get_type ()")]
	public class Extension : GLib.Object {
		[CCode (has_construct_function = false)]
		public Extension ();
		public virtual string get_extension_name ();
		public virtual int32 get_extension_version ();
		public virtual Signond.StorageManager get_storage_manager (Signond.Config config);
		public virtual Signond.SecretStorage get_secret_storage (Signond.Config config);
		public virtual Signond.AccessControlManager get_access_control_manager (Signond.Config config);
	}
	[CCode (cheader_filename = "gsignond/gsignond-config.h", type_id = "gsignond_config_get_type ()")]
	public class Config : GLib.Object {
		public Config ();
		public int get_integer (string key);
		public void set_integer (string key, int value);
		public string get_string (string key);
		public void set_string (string key, string value);
	}
	[CCode (cheader_filename = "gsignond/gsignond-storage-manager.h", type_id = "gsignond_storage_manager_get_type ()")]
	public class StorageManager : GLib.Object {
		[CCode (has_construct_function = false)]
		public StorageManager ();
		public virtual bool initialize_storage ();
		public virtual bool delete_storage ();
		public virtual bool is_initialized ();
		public virtual string mount_filesystem ();
		public virtual bool unmount_filesystem ();
		public virtual bool filesystem_is_mounted ();
	}
	[CCode (cheader_filename = "gsignond/gsignond-secret-storage.h", type_id = "gsignond_secret_storage_get_type ()")]
	public class SecretStorage : GLib.Object {
		[CCode (has_construct_function = false)]
		public SecretStorage ();
		public virtual bool open_db ();
		public virtual bool close_db ();
		public virtual bool clear_db ();
		public virtual bool is_open_db ();
		public virtual Signond.Credentials load_credentials (uint32 id);
		public virtual bool update_credentials (Signond.Credentials creds);
		public virtual bool remove_credentials (uint32 id);
		public virtual bool check_credentials (Signond.Credentials creds);
		public virtual GLib.HashTable<string, GLib.Variant> load_data (uint32 id, uint32 method);
		public virtual bool update_data (uint32 id, uint32 method, GLib.HashTable<string, GLib.Variant> data);
		public virtual bool remove_data (uint32 id, uint32 method);
		public virtual GLib.Error get_last_error ();
	}
	[CCode (cheader_filename = "gsignond/gsignond-credentials.h", type_id = "gsignond_credentials_get_type ()")]
	[Compact]
	public class Credentials : GLib.Object {
		public Credentials ();
		public bool set_data (uint32 id, string username, string password);
		public bool set_id (uint32 id);
		public uint32 get_id ();
		public bool set_username (string username);
		public string get_username ();
		public bool set_password (string password);
		public string get_password ();
		public bool equal (Signond.Credentials one, Signond.Credentials two);
	}
	
	[CCode (cheader_filename = "gsignond/gsignond-access-control-manager.h", type_id = "gsignond_access_control_manager_get_type ()")]
	[Compact]
	public class AccessControlManager : GLib.Object {
		[CCode (has_construct_function = false)]
		public AccessControlManager ();
	}
}
